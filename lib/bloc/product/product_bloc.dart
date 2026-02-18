import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:flutter_crud/data/repositories/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc({required this.productRepository}) : super(ProductInitial()) {
    on<LoadProductsEvent>(_onLoadProducts);
  }

  Future<void> _onLoadProducts(
    LoadProductsEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());
    try {
      final products = await productRepository.getProducts();
      emit(ProductState.productsLoaded(products));
    } catch (err) {
      emit(ProductState.error(err.toString()));
    }
  }
}
