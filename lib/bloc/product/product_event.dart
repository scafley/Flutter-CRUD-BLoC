part of 'product_bloc.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProductsEvent;

  const factory ProductEvent.loadProductById(int id) = LoadProductByIdEvent;
}
