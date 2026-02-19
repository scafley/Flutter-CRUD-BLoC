import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../data/services/api_service.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/product_repository.dart';

// global shared instances (singletons)
final storage = const FlutterSecureStorage();

final apiService = ApiService(secStorage: storage);

final authRepository = AuthRepository(
  apiService: apiService,
  secStorage: storage,
);

final productRepository = ProductRepository(apiService: apiService);
