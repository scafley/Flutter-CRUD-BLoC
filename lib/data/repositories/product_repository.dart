import 'package:dio/dio.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:flutter_crud/data/services/api_service.dart';

class ProductRepository {
  final ApiService apiService;

  ProductRepository({required this.apiService});

  Future<List<Product>> getProducts({int limit = 10, int skip = 0}) async {
    try {
      final res = await apiService.get(
        '/products',
        queryParameters: {'limit': limit, 'skip': skip},
      );

      final List<dynamic> productsJson = res['products'];
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

  Future<Product> getProductById(int id) async {
    try {
      final res = await apiService.get('/products/$id');

      return Product.fromJson(res);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (err) {
      throw Exception('Failed to load product: $err');
    }
  }

  Future<List<Product>> searchProducts(String query) async {
    try {
      final res = await apiService.get('/products/search?q=$query');

      final List<dynamic> productsJson = res['products'];

      final products = productsJson
          .map((json) => Product.fromJson(json as Map<String, dynamic>))
          .toList();

      return products;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (err) {
      throw Exception('Failed to search products: $err');
    }
  }

  Future<Product> addProduct(Product product) async {
    try {
      final res = await apiService.post(
        '/product/add',
        data: {
          'title': product.title,
          'description': product.description,
          'price': product.price,
          'category': product.category,
          'thumbnail': product.thumbnail,
        },
      );
      return Product.fromJson(res);
    } on DioException catch (err) {
      throw _handleDioError(err);
    } catch (err) {
      throw Exception('Failed to add new product. $err');
    }
  }

  Future<Product> updateProduct(Product product) async {
    try {
      final res = await apiService.put(
        '/products/${product.id}',
        data: {
          'title': product.title,
          'price': product.price,
          'description': product.description,
          'category': product.category,
          'thumbnail': product.thumbnail,
        },
      );

      return Product.fromJson(res);
    } on DioException catch (err) {
      throw _handleDioError(err);
    } catch (err) {
      throw Exception('Failed to update product. $err');
    }
  }

  Future<List<String>> getCategories() async {
    try {
      final res = await apiService.get('/products/category-list');

      return List<String>.from(res);
    } on DioException catch (err) {
      throw _handleDioError(err);
    } catch (err) {
      throw Exception("Failed to get categoris. $err");
    }
  }

  Future<List<Product>> getProductsByCategory(String category) async {
    try {
      final res = await apiService.get('/products/category/$category');
      final List<dynamic> productsJson = res['products'];
      return productsJson.map((json) => Product.fromJson(json)).toList();
    } on DioException catch (err) {
      throw _handleDioError(err);
    } catch (err) {
      throw Exception("Failed to get products from $category. $err");
    }
  }

  Future<void> deleteProduct(int id) async {
    try {
      await apiService.delete('/products/$id');
    } on DioException catch (err) {
      throw _handleDioError(err);
    } catch (err) {
      throw Exception("Failed to delete product. $err");
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
