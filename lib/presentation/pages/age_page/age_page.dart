import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:russia_icpc/domain/repository/auth_repository.dart';
import 'package:russia_icpc/presentation/pages/age_page/cubit/age_cubit.dart';
import 'package:russia_icpc/presentation/pages/age_page/cubit/age_state.dart';

class AgePage extends StatelessWidget {
  final String email;
  final String password;
  const AgePage({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AgeCubit(context.read<AuthRepository>(),
          email: email, password: password),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Stack(children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/Background.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(64),
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: (BorderRadius.circular(32)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Сколько вам лет?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1D1F24),
                          fontSize: 24,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Эта информация нужна нам, чтобы подстроить обучающую программу под вас',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3A3D44),
                        fontSize: 14,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 36),
                    Text('Возраст'),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 48,
                      child: TextField(
                        onChanged: (value) =>
                            context.read<AgeCubit>().ageChanged(value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: '23'),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    BlocConsumer<AgeCubit, AgeState>(
                      listener: (context, state) {
                        if (state.status == FormzSubmissionStatus.success) {
                          Navigator.pushNamed(context, "/tabs");
                        }
                        if (state.status == FormzSubmissionStatus.failure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Что-то пошло не так')));
                        }
                      },
                      builder: (context, state) => ElevatedButton(
                        key: const Key('loginForm_continue_raisedButton'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: const Color(0xFF3772FF),
                        ),
                        onPressed: state.isValid
                            ? () =>
                                context.read<AgeCubit>().signUpFormSubmitted()
                            : null,
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text('Потвердить',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        );
      }),
    );
  }
}
