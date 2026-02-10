import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.g.dart';
part 'auth_response.freezed.dart';

@freezed
sealed class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required int id,
    required String username,
    required String email,
    required String firstName,
    required String lastName,
    required String gender,
    required String image,
    @JsonKey(name: 'accessToken') required String token,
    required String refreshToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
