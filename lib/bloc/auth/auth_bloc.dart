import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/data/models/auth_response.dart';
import 'package:flutter_crud/data/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthState.initial()) {
    //event handlers
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final authResponse = await authRepository.login(
        username: event.username,
        password: event.password,
      );
      emit(AuthState.authenticated(authResponse: authResponse));
    } catch (e) {
      emit(AuthState.error(errMsg: e.toString()));
    }
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    try {
      await authRepository.logout();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(errMsg: 'Logout failed: ${e.toString()}'));
    }
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    try {
      final isLoggedIn = await authRepository.isLoggedIn();

      if (isLoggedIn) {
        final userData = await authRepository.getCurrentUser();

        if (userData != null) {
          emit(AuthState.authenticated(authResponse: userData));
        } else {
          emit(const AuthState.unauthenticated());
        }
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }
}
