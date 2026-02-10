import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'bloc/auth/auth_bloc.dart';
import 'core/router/app_router.dart';
import 'data/repositories/auth_repository.dart';
import 'data/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AuthBloc _authBloc;
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();

    const storage = FlutterSecureStorage();
    final apiService = ApiService(secStorage: storage);
    final authRepository = AuthRepository(
      apiService: apiService,
      secStorage: storage,
    );

    _authBloc = AuthBloc(authRepository: authRepository);
    _appRouter = AppRouter(_authBloc);
    _authBloc.add(const AuthEvent.checkAuthStatus());
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authBloc,
      child: MaterialApp.router(
        title: 'Flutter CRUD App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.router,
      ),
    );
  }
}
