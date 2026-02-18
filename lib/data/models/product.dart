import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
sealed class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required double price,
    required String thumbnail,
    String? description,
    String? category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
