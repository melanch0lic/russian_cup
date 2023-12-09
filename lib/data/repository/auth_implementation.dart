import 'package:dio/dio.dart';
import 'package:russia_icpc/data/data_sources/api_client.dart';
import 'package:russia_icpc/data/data_sources/secure_storage.dart';
import 'package:russia_icpc/data/models/request_body/sign_in_body_request.dart';
import 'package:russia_icpc/data/models/responses/auth_response.dart';

import '../../domain/repository/auth_repository.dart';
import '../models/request_body/sign_up_body_request.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final ApiClient _apiClient;
  final SecureStorage _secureStorage;

  AuthRepositoryImplementation(this._apiClient, this._secureStorage);

  @override
  Future<bool> isAuthenticated() async {
    try {
      return await _secureStorage.isUserAuthorized();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> logInWithEmailAndPassword({
    required String login,
    required String password,
  }) async {
    try {
      final SignInBodyRequest body =
          SignInBodyRequest(login: login, password: password);
      final AuthResponse result = await _apiClient.logIn(body);
      await _secureStorage.saveToken(
          result.result.token, result.result.refresh);
    } on DioException catch (e, _) {
      throw Exception(e.message);
    }
  }

  @override
  Future<void> signUp(
      {required String login,
      required String password,
      required int age}) async {
    try {
      final SignUpBodyRequest body =
          SignUpBodyRequest(login: login, password: password, age: age);
      final AuthResponse result = await _apiClient.signUp(body);
      await _secureStorage.saveToken(
          result.result.token, result.result.refresh);
    } on DioException catch (e, _) {
      throw Exception(e.message);
    }
  }

  @override
  Future<void> logOut() async {
    _secureStorage.clearUserData();
  }
}
