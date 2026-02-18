// ignore_for_file: avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/product_detail_screen.dart';
import 'package:flutter_crud/screens/products_screen.dart';
import 'package:flutter_crud/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../screens/home_screen.dart';
import '../../screens/login_screen.dart';

class AppRouter {
  final AuthBloc authBloc;

  AppRouter(this.authBloc);

  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/splash',
    redirect: (context, state) {
      final authState = authBloc.state;
      final isAuthenticated = authState is AuthAuthenticated;
      final isLoading = authState is AuthLoading || authState is AuthInitial;
      final currentPath = state.matchedLocation;

      print('🔍 [Router] State: ${authState.runtimeType}, Path: $currentPath');

      // Loading states → splash
      if (isLoading) {
        if (currentPath != '/splash') {
          print('🔍 [Router] Redirect → /splash (loading)');
          return '/splash';
        }
        return null; // Already on splash
      }

      // Authenticated → home
      if (isAuthenticated) {
        if (currentPath == '/splash' || currentPath == '/login') {
          print('🔍 [Router] Redirect → /home (authenticated)');
          return '/home';
        }
        return null; // Already on authenticated page
      }

      // Unauthenticated → login
      if (currentPath == '/splash' || currentPath == '/home') {
        print('🔍 [Router] Redirect → /login (unauthenticated)');
        return '/login';
      }

      return null; // Already on login or other public page
    },

    // Refresh router when auth state changes
    refreshListenable: GoRouterRefreshStream(authBloc.stream),
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) {
          return MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const LoginScreen()),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        pageBuilder: (context, state) {
          final authState = authBloc.state;
          if (authState is AuthAuthenticated) {
            return MaterialPage(
              key: state.pageKey,
              child: HomeScreen(authResponse: authState.authResponse),
            );
          }

          return MaterialPage(key: state.pageKey, child: const LoginScreen());
        },
      ),

      GoRoute(
        path: '/products',
        pageBuilder: (context, state) {
          return MaterialPage(child: ProductsScreen());
        },
      ),
      GoRoute(
        path: '/products/:id',
        name: 'product-detail',
        pageBuilder: (context, state) {
          final id = state.pathParameters['id']!;
          return MaterialPage(child: ProductDetailScreen(productId: id));
        },
      ),
    ],

    errorBuilder: (context, state) =>
        LoginScreen(key: ValueKey('error_${state.error}')),
  );
}

/// Stream listener
class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (event) {
        print('Router Auth state changed, refreshing routes...');
        notifyListeners();
      },
      onError: (error) {
        print('Router Stream error: $error');
      },
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
