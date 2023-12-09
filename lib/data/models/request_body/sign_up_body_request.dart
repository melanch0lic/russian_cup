import 'package:json_annotation/json_annotation.dart';

part 'sign_up_body_request.g.dart';

@JsonSerializable()
class SignUpBodyRequest {
  final String login;
  final String password;
  final int age;

  SignUpBodyRequest(
      {required this.login, required this.password, required this.age});

  factory SignUpBodyRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpBodyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpBodyRequestToJson(this);
}
