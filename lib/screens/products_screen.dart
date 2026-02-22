import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/bloc/product/product_bloc.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:go_router/go_router.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(const ProductEvent.loadProducts());
    return const _ProductsView();
  }
}

class _ProductsView extends StatelessWidget {
  const _ProductsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.search),
          //   onPressed: () {
          //     // TODO: Search (później)
          //   },
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/products/add'),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: kIsWeb ? 600 : double.infinity),
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.when(
                initial: () => Center(child: Text("Loading")),
                loading: () => Center(child: CircularProgressIndicator()),
                productDeleted: (_) => const SizedBox.shrink(),
                productUpdated: (_) => SizedBox(),
                productsLoaded: (products) {
                  if (products.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("No products found"),
                          SizedBox(height: 16),
                          ElevatedButton.icon(
                            onPressed: () {
                              context.read<ProductBloc>().add(
                                const ProductEvent.loadProducts(),
                              );
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Refresh'),
                          ),
                        ],
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<ProductBloc>().add(
                        ProductEvent.loadProducts(),
                      );
                      await Future.delayed(const Duration(milliseconds: 500));
                    },
                    child: GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            onTap: () {
                              context.push('/products/${product.id}');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Center(
                                    child: CachedNetworkImage(
                                      imageUrl: product.thumbnail,
                                      fit: BoxFit.contain,
                                      errorWidget: (context, url, error) =>
                                          Container(
                                            color: Colors.grey[200],
                                            child: const Icon(
                                              Icons.error,
                                              size: 32,
                                              color: Colors.black,
                                            ),
                                          ),
                                      placeholder: (context, url) => Container(
                                        color: Colors.grey[200],
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.title,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "Price:",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "${product.price.toStringAsFixed(2)} zł",
                                        style: TextStyle(
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                productAdded: (product) => SizedBox(),
                productLoaded: (product) => SizedBox(),
                error: (msg) => Center(
                  child: Column(
                    children: [
                      Text(msg),
                      SizedBox(height: 10),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<ProductBloc>().add(
                            const ProductEvent.loadProducts(),
                          );
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
