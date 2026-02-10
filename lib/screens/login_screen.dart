import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    print('🟢 [LoginScreen] createState()');
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print('🟢 [LoginScreen] initState()');
  }

  @override
  void dispose() {
    print('🔴 [LoginScreen] dispose() - START');
    print('🔴 [LoginScreen] mounted: $mounted');

    try {
      _usernameController.dispose();
      print('🔴 [LoginScreen] username controller disposed');
    } catch (e) {
      print('❌ [LoginScreen] Error disposing username controller: $e');
    }

    try {
      _passwordController.dispose();
      print('🔴 [LoginScreen] password controller disposed');
    } catch (e) {
      print('❌ [LoginScreen] Error disposing password controller: $e');
    }

    print('🔴 [LoginScreen] dispose() - calling super.dispose()');
    super.dispose();
    print('🔴 [LoginScreen] dispose() - END');
  }

  @override
  Widget build(BuildContext context) {
    print('🔵 [LoginScreen] build()');

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          print('👂 [LoginScreen] Listener - state: ${state.runtimeType}');

          if (state is AuthError) {
            if (!mounted) {
              print('⚠️ [LoginScreen] Not mounted, skipping SnackBar');
              return;
            }

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMsg),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          print('🏗️ [LoginScreen] Builder - state: ${state.runtimeType}');
          final isLoading = state is AuthLoading;

          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        size: 80,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 48),

                      TextField(
                        controller: _usernameController,
                        enabled: !isLoading,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),

                      TextField(
                        controller: _passwordController,
                        enabled: !isLoading,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 24),

                      if (isLoading)
                        const Center(child: CircularProgressIndicator())
                      else
                        ElevatedButton(
                          onPressed: _onLoginPressed,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                      const SizedBox(height: 16),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              "(This Flutter App use dummyjson API)\n\nTest credentials:\n\nUsername: ",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                          children: const [
                            TextSpan(
                              text: "emilys\n",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "Password: "),
                            TextSpan(
                              text: "emilyspass",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onLoginPressed() {
    print('🔘 [LoginScreen] Login button pressed');
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      if (!mounted) {
        print('⚠️ [LoginScreen] Not mounted, skipping validation SnackBar');
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter username and password!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    context.read<AuthBloc>().add(
      AuthEvent.login(username: username, password: password),
    );
  }
}
