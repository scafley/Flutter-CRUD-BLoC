part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.logout() = LogoutEvent;

  const factory AuthEvent.checkAuthStatus() = CheckAuthStatusEvent;
}
