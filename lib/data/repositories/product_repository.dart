import 'package:dio/dio.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:flutter_crud/data/services/api_service.dart';

class ProductRepository {
  final ApiService apiService;

  ProductRepository({required this.apiService});

  Future<List<Product>> getProducts() async {
    try {
      final res = await apiService.get('/products');

      final List<Product> productsJson = res['products'];
      final products = productsJson
          .map((json) => Product.fromJson(json as Map<String, dynamic>))
          .toList();

      return products;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (err) {
      throw Exception('Failed to load products: $err');
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
        if (statusCode == 404) {
          return 'Products not found';
        } else if (statusCode == 500) {
          return 'Server error - please try again later';
        }
        return 'Server error: $statusCode';

      case DioExceptionType.connectionError:
        return 'No internet connection';

      default:
        return 'Network error - please try again';
    }
  }
}
