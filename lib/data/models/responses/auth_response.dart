import 'package:json_annotation/json_annotation.dart';
import 'package:russia_icpc/data/models/token_model.dart';

import '../error.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  final TokenModel result;
  final ErrorModel error;

  AuthResponse({required this.result, required this.error});

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
