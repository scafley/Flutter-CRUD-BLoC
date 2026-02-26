part of 'product_bloc.dart';

@freezed
sealed class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.loadingMore() = ProductLoadingMore;

  const factory ProductState.productsLoaded(
    List<Product> products, {
    @Default(true) bool hasMore,
  }) = ProductsLoaded;

  const factory ProductState.productLoaded(Product product) = ProductLoaded;

  const factory ProductState.productAdded(Product product) = ProductAdded;

  const factory ProductState.productUpdated(Product product) = ProductUpdated;

  const factory ProductState.productDeleted(int id) = ProductDeleted;

  const factory ProductState.error(String err) = ProductError;
}
