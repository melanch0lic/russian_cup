import 'package:dio/dio.dart';
import 'package:russia_icpc/data/models/request_body/sign_in_body_request.dart';
import 'package:russia_icpc/data/models/responses/auth_response.dart';
import 'package:retrofit/retrofit.dart';

import '../models/request_body/sign_up_body_request.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://194.87.232.6/api/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('auth/sign-up/')
  Future<AuthResponse> signUp(@Body() SignUpBodyRequest body);

  @POST('auth/sign-in/')
  Future<AuthResponse> logIn(@Body() SignInBodyRequest body);
}
