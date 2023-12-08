import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../app_bloc.dart';
import '../../../domain/repository/auth_repository.dart';

import '../sign_up_page/sign_up_page.dart';
import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
      body: BlocProvider(
        create: (context) => LoginCubit(context.read<AuthRepository>()),
        child: BlocListener<LoginCubit, LoginState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isSuccess) {
              Navigator.pushReplacementNamed(context, '/tabs');
            }
            if (state.status.isFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content:
                        Text(state.errorMessage ?? 'Authentication Failure'),
                  ),
                );
            }
          },
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(64),
              width: 450,
              height: 550,
              decoration: BoxDecoration(
                borderRadius: (BorderRadius.circular(32)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Text('Авторизация',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 36),
                  _EmailInput(),
                  _PasswordInput(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text('Забыли пароль?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(107, 78, 255, 1)))),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _LoginButton(),
                  const SizedBox(height: 16),
                  //S_GoogleLoginButton(),
                  _SignUpButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            prefixIcon: const Icon(Icons.mail_outline,
                color: Color.fromRGBO(158, 165, 173, 1)),
            hintText: 'Email',
            hintStyle: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(158, 165, 173, 1)),
            helperText: '',
            errorText:
                state.email.displayError != null ? 'Invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          onSubmitted: state.isValid
              ? (_) => context.read<LoginCubit>().logInWithCredentials()
              : null,
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            hintText: 'Пароль',
            prefixIcon: const Icon(Icons.lock_outline,
                color: Color.fromRGBO(158, 165, 173, 1)),
            hintStyle: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(158, 165, 173, 1)),
            helperText: '',
            errorText:
                state.password.displayError != null ? 'Invalid password' : null,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('loginForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  backgroundColor: const Color.fromRGBO(107, 78, 255, 1),
                ),
                onPressed: state.isValid
                    ? () => context
                        .read<LoginCubit>()
                        .logInWithCredentials()
                        .whenComplete(() =>
                            context.read<AppBloc>().add(AppLoginRequested()))
                    : null,
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('Войти',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                )),
              );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const SignUpPage())),
      child: const Text('или Зарегистрироваться',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(107, 78, 255, 1))),
    );
  }
}
