import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:russia_icpc/domain/repository/auth_repository.dart';
import 'package:russia_icpc/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:russia_icpc/presentation/pages/tabs_page/tabs_page.dart';

import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context.read<AuthRepository>()),
      child: Stack(children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/background.png",
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              padding: const EdgeInsets.only(right: 32, left: 32, top: 32, bottom: 36),
              width: 444,
              decoration: BoxDecoration(
                borderRadius: (BorderRadius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: Text('Вход', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                  const SizedBox(height: 16),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text('Ещё нет аккаунта?'),
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage())),
                      child: const Text('Создайте его',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(55, 114, 255, 1))),
                    )
                  ]),
                  const SizedBox(height: 36),
                  const Text(
                    'Email',
                    style: TextStyle(color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  _EmailInput(),
                  const SizedBox(height: 24),
                  const Text(
                    'Пароль',
                    style: TextStyle(color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  _PasswordInput(),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Text('Забыли пароль?',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(55, 114, 255, 1)))),
                    ],
                  ),
                  const SizedBox(height: 36),
                  _LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) => TextField(
          onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: state.email.displayError != null
                        ? const Color.fromRGBO(255, 82, 71, 1)
                        : const Color.fromRGBO(55, 114, 255, 1)),
                borderRadius: BorderRadius.circular(8)),
            hintText: 'example@mail.ru',
            hintStyle: const TextStyle(fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
          ),
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) => TextField(
          onChanged: (value) => context.read<LoginCubit>().passwordChanged(value),
          obscureText: state.isPasswordObscure,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: state.password.displayError != null
                        ? const Color.fromRGBO(255, 82, 71, 1)
                        : const Color.fromRGBO(55, 114, 255, 1)),
                borderRadius: BorderRadius.circular(8)),
            hintText: '········',
            hintStyle: const TextStyle(fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
            suffixIcon: InkWell(
                onTap: () => context.read<LoginCubit>().togglePasswordVisibility(),
                child: const Icon(Icons.lock_outline)),
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.success) {
          Navigator.pushReplacementNamed(context, '/tabs');
        }
        if (state.status == FormzSubmissionStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Неверный логин или пароль'),
          ));
        }
      },
      builder: (context, state) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
        ),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TabsPage())),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Text('Войти', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
        )),
      ),
    );
  }
}
