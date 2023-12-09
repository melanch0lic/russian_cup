import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';
import 'domain/repository/auth_repository.dart';

part 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          const AppState.unauthenticated(),
        ) {
    on<AppLoginRequested>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
  }

  final AuthRepository _authenticationRepository;

  void _onUserChanged(AppLoginRequested event, Emitter<AppState> emit) async {
    emit(
      const AppState.authenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_authenticationRepository.logOut());
  }
}
