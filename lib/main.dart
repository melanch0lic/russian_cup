import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:russia_icpc/data/data_sources/api_client.dart';
import 'package:russia_icpc/data/data_sources/secure_storage.dart';
import 'package:russia_icpc/russia_cup_app.dart';
import 'package:url_strategy/url_strategy.dart';
import 'data/repository/auth_implementation.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Dio _dio = Dio()..interceptors.addAll([LogInterceptor(requestBody: true)]);
  ApiClient _apiClient = ApiClient(_dio);
  SecureStorage _secureStorage = SecureStorage();
  final authenticationRepository =
      AuthRepositoryImplementation(_apiClient, _secureStorage);
  runApp(RussiaCupApp(
    authRepository: authenticationRepository,
  ));
}
