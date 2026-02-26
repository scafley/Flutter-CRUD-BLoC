import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/bloc/product/product_bloc.dart';
import 'package:flutter_crud/core/di/instances.dart';
import 'package:flutter_crud/data/models/product.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductBloc(productRepository: productRepository)
            ..add(ProductEvent.loadProductById(int.parse(productId))),
      child: _ProductDetailView(),
    );
  }
}

class _ProductDetailView extends StatefulWidget {
  const _ProductDetailView();

  @override
  State<_ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<_ProductDetailView> {
  Product? _currentProduct;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          if (_currentProduct != null) ...[
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                context.push(
                  '/products/${_currentProduct!.id}/edit',
                  extra: _currentProduct,
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _showDeleteDialog(context, _currentProduct!),
            ),
          ],
        ],
      ),

      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: kIsWeb ? 600 : double.infinity),
          child: BlocListener<ProductBloc, ProductState>(
            listener: (context, state) {
              state.whenOrNull(
                productDeleted: (id) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product deleted!'),
                      backgroundColor: Colors.green,
                    ),
                  );

                  // Go back to products list
                  context.go('/products');
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: $message'),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
              );
            },
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Loading...')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  productDeleted: (_) => const SizedBox.shrink(),
                  productsLoaded: (_, _) => const SizedBox(),

                  productLoaded: (product) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() {
                          _currentProduct = product;
                        });
                      }
                    });
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Large Image
                          CachedNetworkImage(
                            imageUrl: product.thumbnail,
                            width: double.infinity,
                            height: 300,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              height: 300,
                              color: Colors.grey[200],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              height: 300,
                              color: Colors.grey[200],
                              child: const Icon(
                                Icons.image_not_supported,
                                size: 64,
                                color: Colors.grey,
                              ),
                            ),
                          ),

                          // Content
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Text(
                                  product.title,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 16),

                                // Price
                                Text(
                                  '${product.price.toStringAsFixed(2)} zł',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[900],
                                  ),
                                ),
                                const SizedBox(height: 24),

                                // Description
                                if (product.description != null &&
                                    product.description!.isNotEmpty) ...[
                                  const Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    product.description!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      height: 1.5,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                ],

                                // Details Card
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        if (product.category != null)
                                          Row(
                                            children: [
                                              Text(
                                                "Category: ${product.category!}",
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 64,
                          color: Colors.red,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Go Back'),
                        ),
                      ],
                    ),
                  ),
                  productAdded: (_) => SizedBox(),
                  productUpdated: (_) => SizedBox(),
                  loadingMore: () {
                    return CircularProgressIndicator();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Product'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Note: This app uses DummyJSON mock API for demonstration. The API will return success responses, but it will NOT delete data from server.',
              style: TextStyle(fontSize: 13, color: Colors.amber.shade900),
            ),
            SizedBox(height: 16),
            Text(
              'Are you sure you want to delete "${product.title}"?\n\nThis action cannot be undone.',
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.read<ProductBloc>().add(
                ProductEvent.deleteProduct(product.id),
              );
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
