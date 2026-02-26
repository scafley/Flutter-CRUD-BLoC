import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiService {
  final Dio dio;
  final FlutterSecureStorage secStorage;
  ApiService({required this.secStorage})
    : dio = Dio(
        BaseOptions(
          baseUrl: 'https://dummyjson.com',
          connectTimeout: const Duration(seconds: 3),
          receiveTimeout: const Duration(seconds: 3),
        ),
      ) {
    dio.interceptors.add(
      //add token from secureStorage (if exists)
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await secStorage.read(key: 'auth_token');

          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
      ),
    );

    //show logs
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        // ignore: avoid_print
        logPrint: (log) => print('[DIO] $log'),
      ),
    );
  }

  //http methods
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await dio.get(path, queryParameters: queryParameters);
    return res.data as dynamic;
  }

  Future<Map<String, dynamic>> post(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    final response = await dio.post(path, data: data);
    return response.data as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> put(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    final response = await dio.put(path, data: data);
    return response.data as Map<String, dynamic>;
  }

  Future<void> delete(String path) async {
    await dio.delete(path);
  }
}
