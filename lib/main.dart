import 'package:flutter/material.dart';
import 'package:russia_icpc/russia_cup_app.dart';
import 'package:url_strategy/url_strategy.dart';
import 'data/repository/auth_implementation.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  final authenticationRepository = AuthRepositoryImplementation();
  runApp(RussiaCupApp(
    authRepository: authenticationRepository,
  ));
}
