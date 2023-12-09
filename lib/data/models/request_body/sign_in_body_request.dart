import 'package:json_annotation/json_annotation.dart';

part 'sign_in_body_request.g.dart';

@JsonSerializable()
class SignInBodyRequest {
  final String login;
  final String password;

  SignInBodyRequest({required this.login, required this.password});

  factory SignInBodyRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInBodyRequestToJson(this);
}
