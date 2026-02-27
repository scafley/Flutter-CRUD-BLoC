import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_crud/data/models/product.dart';

void main() {
  group('Product Model Tests', () {
    test('Product fromJson creates valid object', () {
      final json = {
        'id': 1,
        'title': 'Test Product',
        'price': 99.99,
        'description': 'Test description',
        'category': 'electronics',
        'thumbnail': 'https://example.com/image.jpg',
      };

      final product = Product.fromJson(json);

      expect(product.id, 1);
      expect(product.title, 'Test Product');
      expect(product.price, 99.99);
      expect(product.category, 'electronics');
    });

    test('Product toJson creates valid map', () {
      final product = Product(
        id: 1,
        title: 'Test Product',
        price: 99.99,
        description: 'Test description',
        category: 'electronics',
        thumbnail: 'https://example.com/image.jpg',
      );

      final json = product.toJson();

      expect(json['id'], 1);
      expect(json['title'], 'Test Product');
      expect(json['price'], 99.99);
    });

    test('Products with same data are equal (Freezed)', () {
      final product1 = Product(
        id: 1,
        title: 'Test',
        price: 10.0,
        description: 'Desc',
        category: 'cat',
        thumbnail: 'thumb',
      );

      final product2 = Product(
        id: 1,
        title: 'Test',
        price: 10.0,
        description: 'Desc',
        category: 'cat',
        thumbnail: 'thumb',
      );

      expect(product1, product2);
    });
  });
}
