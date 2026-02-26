import 'dart:async';

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

class _ProductsView extends StatefulWidget {
  const _ProductsView();

  @override
  State<_ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<_ProductsView> {
  final _searchController = TextEditingController();
  Timer? _debounce;
  bool _isSearching = false;

  List<String> _categories = [];
  String _selectedCategory = 'All';

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), () {
      context.read<ProductBloc>().add(ProductEvent.searchProducts(query));
    });
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _selectedCategory = 'All';
        context.read<ProductBloc>().add(const ProductEvent.loadProducts());
      }
    });
  }

  Future<void> _loadCategories() async {
    try {
      final repository = context.read<ProductBloc>().productRepository;
      final categories = await repository.getCategories();
      setState(() {
        _categories = ['All', ...categories];
      });
    } catch (e) {
      print('Failed to load categories: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Search products...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
                onChanged: _onSearchChanged,
              )
            : const Text('Products'),
        actions: [
          if (!_isSearching && _categories.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: DropdownButton<String>(
                value: _selectedCategory,
                dropdownColor: Colors.white,
                style: const TextStyle(color: Colors.black),
                underline: Container(),
                icon: const Icon(Icons.filter_list, color: Colors.black),
                items: _categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category, style: const TextStyle(fontSize: 14)),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedCategory = value;
                    });

                    if (value == 'All') {
                      context.read<ProductBloc>().add(
                        const ProductEvent.loadProducts(),
                      );
                    } else {
                      context.read<ProductBloc>().add(
                        ProductEvent.filterByCategory(value),
                      );
                    }
                  }
                },
              ),
            ),

          if (_isSearching)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _searchController.clear();
                context.read<ProductBloc>().add(
                  const ProductEvent.loadProducts(),
                );
              },
            ),

          IconButton(
            icon: Icon(_isSearching ? Icons.search_off : Icons.search),
            onPressed: _toggleSearch,
          ),
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
                initial: () => const Center(child: Text("Loading")),
                loading: () => const Center(child: CircularProgressIndicator()),
                loadingMore: () {
                  // Show products with loading indicator
                  return const Center(child: CircularProgressIndicator());
                },
                productDeleted: (_) => const SizedBox.shrink(),
                productUpdated: (_) => const SizedBox(),
                productsLoaded: (products, hasMore) {
                  if (products.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("No products found"),
                          const SizedBox(height: 16),
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
                  //final currentPage = (products.length / 10).ceil();

                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<ProductBloc>().add(
                        const ProductEvent.loadProducts(),
                      );
                      await Future.delayed(const Duration(milliseconds: 500));
                    },
                    child: Column(
                      children: [
                        // Text("Page ${currentPage}"),
                        Expanded(
                          child: GridView.builder(
                            padding: const EdgeInsets.all(16),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8,
                                ),
                            itemCount: products.length + (hasMore ? 1 : 0),

                            itemBuilder: (context, index) {
                              if (index == products.length) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        context.read<ProductBloc>().add(
                                          const ProductEvent.loadMoreProducts(),
                                        );
                                      },
                                      icon: const Icon(Icons.add),
                                      label: const Text('Load More'),
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 24,
                                          vertical: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Center(
                                          child: CachedNetworkImage(
                                            imageUrl: product.thumbnail,
                                            fit: BoxFit.contain,
                                            errorWidget:
                                                (context, url, error) =>
                                                    Container(
                                                      color: Colors.grey[200],
                                                      child: const Icon(
                                                        Icons.error,
                                                        size: 32,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                            placeholder: (context, url) =>
                                                Container(
                                                  color: Colors.grey[200],
                                                  child: const Center(
                                                    child:
                                                        CircularProgressIndicator(),
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
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Text(
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
                        ),
                      ],
                    ),
                  );
                },
                productAdded: (product) => const SizedBox(),
                productLoaded: (product) => const SizedBox(),
                error: (msg) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(msg),
                      const SizedBox(height: 10),
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
