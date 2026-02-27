import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:flutter_crud/data/repositories/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  // pagination
  int _currentPage = 0;
  List<Product> _allProducts = [];
  static const int _pageSize = 10;

  ProductBloc({required this.productRepository}) : super(ProductInitial()) {
    on<LoadProductsEvent>(_onLoadProducts);
    on<LoadProductByIdEvent>(_onLoadProductById);
    on<AddProductEvent>(_onAddProduct);
    on<UpdateProductEvent>(_onUpdateProduct);
    on<DeleteProductEvent>(_onDeleteProduct);
    on<ResetProductsEvent>(_onReset);
    on<SearchProductsEvent>(_onSearchProducts);
    on<FilterByCategoryEvent>(_onFilterByCategory);
    on<LoadMoreProductsEvent>(_onLoadMoreProducts);
  }

  Future<void> _onLoadProducts(
    LoadProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());
    try {
      _currentPage = 0;
      _allProducts = [];
      final products = await productRepository.getProducts(
        limit: _pageSize,
        skip: _currentPage * _pageSize,
      );

      _allProducts = products;
      emit(
        ProductState.productsLoaded(
          _allProducts,
          hasMore: products.length == _pageSize,
        ),
      );
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onLoadMoreProducts(
    LoadMoreProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    final currentState = state;
    if (currentState is ProductLoadingMore) return;
    if (currentState is ProductsLoaded && !currentState.hasMore) return;

    emit(const ProductState.loadingMore());

    try {
      _currentPage++;

      final newProducts = await productRepository.getProducts(
        limit: _pageSize,
        skip: _currentPage * _pageSize,
      );

      _allProducts.addAll(newProducts);

      emit(
        ProductState.productsLoaded(
          List.from(_allProducts),
          hasMore: newProducts.length == _pageSize,
        ),
      );
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onLoadProductById(
    LoadProductByIdEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductState.loading());

    try {
      final product = await productRepository.getProductById(event.id);
      emit(ProductState.productLoaded(product));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onAddProduct(
    AddProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());

    try {
      final newProduct = await productRepository.addProduct(event.product);
      emit(ProductState.productAdded(newProduct));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onUpdateProduct(
    UpdateProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());

    try {
      final updatedProduct = await productRepository.updateProduct(
        event.product,
      );

      emit(ProductState.productUpdated(updatedProduct));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onDeleteProduct(
    DeleteProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());

    try {
      await productRepository.deleteProduct(event.id);
      emit(ProductState.productDeleted(event.id));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onReset(
    ResetProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.initial());
  }

  Future<void> _onSearchProducts(
    SearchProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(ProductState.error(""));
    }
    emit(ProductState.loading());
    try {
      _currentPage = 0;
      _allProducts = [];
      final products = await productRepository.searchProducts(event.query);
      emit(ProductState.productsLoaded(products, hasMore: false));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }

  Future<void> _onFilterByCategory(
    FilterByCategoryEvent event,
    Emitter<ProductState> emit,
  ) async {
    if (event.category.isEmpty || event.category.toLowerCase() == 'all') {
      add(ProductEvent.loadProducts());
      return;
    }
    emit(const ProductState.loading());

    try {
      _currentPage = 0;
      _allProducts = [];
      final products = await productRepository.getProductsByCategory(
        event.category,
      );
      emit(ProductState.productsLoaded(products, hasMore: false));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }
}
