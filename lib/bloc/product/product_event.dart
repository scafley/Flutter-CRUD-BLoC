part of 'product_bloc.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadProducts() = LoadProductsEvent;

  const factory ProductEvent.loadProductById(int id) = LoadProductByIdEvent;

  const factory ProductEvent.loadMoreProducts() = LoadMoreProductsEvent;

  const factory ProductEvent.addProduct(Product product) = AddProductEvent;

  const factory ProductEvent.updateProduct(Product product) =
      UpdateProductEvent;

  const factory ProductEvent.deleteProduct(int id) = DeleteProductEvent;

  const factory ProductEvent.reset() = ResetProductsEvent;

  const factory ProductEvent.searchProducts(String query) = SearchProductsEvent;

  const factory ProductEvent.loadCategories() = LoadCategoriesEvent;

  const factory ProductEvent.filterByCategory(String category) =
      FilterByCategoryEvent;
}
