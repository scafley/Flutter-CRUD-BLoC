import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/bloc/product/product_bloc.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:flutter_crud/data/repositories/product_repository.dart';
import 'package:flutter_crud/data/services/api_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(
        productRepository: ProductRepository(
          apiService: ApiService(secStorage: const FlutterSecureStorage()),
        ),
      )..add(const ProductEvent.loadProducts()),
      child: const _ProductsView(),
    );
  }
}

class _ProductsView extends StatefulWidget {
  const _ProductsView({super.key});

  @override
  State<_ProductsView> createState() => _PProductsViewState();
}

class _PProductsViewState extends State<_ProductsView> {
  @override
  void initState() {
    super.initState();

    context.read<ProductBloc>().add(ProductEvent.loadProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.when(
            initial: () => SizedBox(),
            loading: () => CircularProgressIndicator(),
            productsLoaded: (products) =>
                ListView(children: [for (Product p in products) Text(p.title)]),
            productLoaded: (product) => SizedBox(),
            error: (msg) => Text(msg),
          );
        },
      ),
    );
  }
}
