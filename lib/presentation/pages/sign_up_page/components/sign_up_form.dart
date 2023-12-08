import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../login_page/login_page.dart';
import '../cubit/sign_up_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.pushNamed(context, '/tabs');
        } else if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? 'Sign Up Failure')),
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
              const Text('Регистрация',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
              const SizedBox(height: 36),
              _EmailInput(),
              _PasswordInput(),
              _SignUpButton(),
              const SizedBox(height: 24),
              _HaveAccButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context.read<SignUpCubit>().emailChanged(email),
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
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignUpCubit>().passwordChanged(password),
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

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  backgroundColor: const Color.fromRGBO(107, 78, 255, 1),
                ),
                onPressed: state.isValid
                    ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                    : null,
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('Зарегистрироваться',
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

class _HaveAccButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage())),
      child: const Text('или Войти',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(107, 78, 255, 1))),
    );
  }
}
