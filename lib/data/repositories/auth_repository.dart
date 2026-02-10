import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_crud/data/models/auth_response.dart';
import 'package:flutter_crud/data/models/user.dart';
import 'package:flutter_crud/data/services/api_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final ApiService apiService;
  final FlutterSecureStorage secStorage;

  AuthRepository({required this.apiService, required this.secStorage});

  Future<AuthResponse> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        '/auth/login',
        data: {'username': username, 'password': password, 'expiresInMins': 30},
      );

      final authResponse = AuthResponse.fromJson(response);

      await secStorage.write(key: 'auth_token', value: authResponse.token);
      await secStorage.write(
        key: 'refresh_token',
        value: authResponse.refreshToken,
      );

      return authResponse;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw Exception('Unexpected error during login: $e');
    }
  }

  Future<AuthResponse?> getCurrentUser() async {
    try {
      final token = await secStorage.read(key: 'auth_token');
      final refreshToken = await secStorage.read(key: 'refresh_token');

      if (token == null) {
        return null;
      }

      final response = await apiService.get('/auth/me');
      final user = User.fromJson(response);

      final authResponse = AuthResponse(
        id: user.id,
        username: user.username,
        email: user.email,
        firstName: user.firstName,
        lastName: user.lastName,
        gender: user.gender,
        image: user.image,
        token: token,
        refreshToken: refreshToken ?? '',
      );

      return authResponse;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        await logout();
        return null;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> logout() async {
    try {
      await secStorage.delete(key: 'auth_token');
      await secStorage.delete(key: 'refresh_token');
    } catch (e) {
      throw Exception('Failed to logout: $e');
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      final token = await secStorage.read(key: 'auth_token');
      return token != null && token.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<String?> getToken() async {
    try {
      return await secStorage.read(key: 'auth_token');
    } catch (e) {
      return null;
    }
  }

  String _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout - check your internet';

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode == 400) {
          return 'Invalid username or password';
        } else if (statusCode == 401) {
          return 'Unauthorized - invalid credentials';
        } else if (statusCode == 500) {
          return 'Server error - please try again later';
        }
        return 'Server error: $statusCode';

      case DioExceptionType.cancel:
        return 'Request was cancelled';

      case DioExceptionType.badCertificate:
        return 'Certificate error';

      case DioExceptionType.connectionError:
        return 'No internet connection';

      default:
        return 'Network error - please try again';
    }
  }
}
