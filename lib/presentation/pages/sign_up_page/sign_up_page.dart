import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/sign_up_page/cubit/sign_up_cubit.dart';

import '../age_page/age_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
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
              padding: const EdgeInsets.only(
                  right: 32, left: 32, top: 32, bottom: 36),
              width: 444,
              decoration: BoxDecoration(
                borderRadius: (BorderRadius.circular(32)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(
                      child: Text('Регистрация',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700))),
                  const SizedBox(height: 16),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text('Уже  есть аккаунт?'),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Войдите',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(55, 114, 255, 1))),
                    )
                  ]),
                  const SizedBox(height: 36),
                  const Text(
                    'Email',
                    style: TextStyle(
                        color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  _EmailInput(),
                  const SizedBox(height: 24),
                  const Text(
                    'Пароль',
                    style: TextStyle(
                        color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  _PasswordInput(),
                  const SizedBox(height: 24),
                  const Text(
                    'Повторите пароль',
                    style: TextStyle(
                        color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  _ConfirmedPasswordInput(),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      BlocBuilder<SignUpCubit, SignUpState>(
                          builder: (context, state) => Checkbox(
                              value: state.isServiceTermes,
                              onChanged: (_) => context
                                  .read<SignUpCubit>()
                                  .toggleServiceTermes())),
                      const SizedBox(width: 10),
                      const Flexible(
                          child: Text(
                              'Нажимая на “Создать аккаунт”, вы принимаете Пользовательское соглашение',
                              maxLines: 2))
                    ],
                  ),
                  const SizedBox(height: 36),
                  _SignUpButton(),
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) => SizedBox(
        height: 48,
        child: TextField(
          onChanged: (value) => context.read<SignUpCubit>().emailChanged(value),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: state.email.displayError != null
                        ? const Color.fromRGBO(255, 82, 71, 1)
                        : const Color.fromRGBO(55, 114, 255, 1)),
                borderRadius: BorderRadius.circular(8)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: state.email.displayError != null
                        ? const Color.fromRGBO(255, 82, 71, 1)
                        : const Color.fromRGBO(55, 114, 255, 1)),
                borderRadius: BorderRadius.circular(8)),
            hintText: 'example@mail.ru',
            hintStyle: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
          ),
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) => SizedBox(
        height: 48,
        child: TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (value) =>
              context.read<SignUpCubit>().passwordChanged(value),
          obscureText: state.isPasswordObscure,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: state.password.displayError != null
                        ? const Color.fromRGBO(255, 82, 71, 1)
                        : const Color.fromRGBO(55, 114, 255, 1)),
                borderRadius: BorderRadius.circular(8)),
            hintText: '········',
            hintStyle: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
            suffixIcon: InkWell(
                onTap: () =>
                    context.read<SignUpCubit>().togglePasswordVisibility(),
                child: const Icon(Icons.lock_outline)),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ),
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) => TextField(
        key: const Key('signUpForm_confirmedPasswordInput_textField'),
        onChanged: (value) =>
            context.read<SignUpCubit>().confirmedPasswordChanged(value),
        obscureText: state.isConfirmedPasswordObscure,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: state.confirmedPassword.displayError != null
                      ? const Color.fromRGBO(255, 82, 71, 1)
                      : const Color.fromRGBO(55, 114, 255, 1)),
              borderRadius: BorderRadius.circular(8)),
          hintText: '········',
          hintStyle: const TextStyle(
              fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
          suffixIcon: InkWell(
              onTap: () => context
                  .read<SignUpCubit>()
                  .togglePasswordConfirmationVisibility(),
              child: const Icon(Icons.lock_outline)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
        ),
        onPressed: state.isValid
            ? () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AgePage(
                        email: state.email.value,
                        password: state.password.value)));
              }
            : null,
        child: const Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Text('Cоздать аккаунт',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
        )),
      ),
    );
  }
}
