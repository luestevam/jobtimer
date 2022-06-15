import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../services/auth/auth_services.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  Future<void> signIn() async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await _authService.singnIn();
    } on Exception catch (e, s) {
      log('erro ao realizar login', error: e, stackTrace: s);
      emit(state.copyWith(
          status: LoginStatus.failure, ErrorMessage: 'Erro ao realizar login'));
    }
  }
}
