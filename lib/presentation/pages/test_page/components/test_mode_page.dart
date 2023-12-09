import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/test_page/cubit/test_cubit.dart';

import '../../../widgets/user_exit_info_widget.dart';
import '../../courses_page/components/course_steps_widget.dart';
import '../cubit/test_state.dart';

class TestModePage extends StatelessWidget {
  const TestModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const UserInfoExitWidget(),
              const SizedBox(height: 36),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<TestCubit, TestState>(
                    builder: (context, state) => Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 24, right: 24, top: 32, bottom: 36),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Какой из представленных паролей является наиболее безопасным?',
                                    style: TextStyle(
                                      color: Color(0xFF1D1F24),
                                      fontSize: 32,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: 516,
                                    height: 60,
                                    padding: const EdgeInsets.all(16),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xFF429482)),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF429482),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          'Bi%DuIn!So57Lo',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF429482),
                                            fontSize: 16,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: 516,
                                    height: 60,
                                    padding: const EdgeInsets.all(16),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xFFD3D5DA)),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFECEFF3),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'B',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF1D1F24),
                                                  fontSize: 16,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          'iLoVeYou',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1D1F24),
                                            fontSize: 16,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: 516,
                                    height: 60,
                                    padding: const EdgeInsets.all(16),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xFFE55D57)),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFE55D57),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'C',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          'D00R8377',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFE55D57),
                                            fontSize: 16,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: 516,
                                    height: 60,
                                    padding: const EdgeInsets.all(16),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Color(0xFFD3D5DA)),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFECEFF3),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'D',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF1D1F24),
                                                  fontSize: 16,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          '1q2w3e4r',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1D1F24),
                                            fontSize: 16,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Увы, ответ неверный ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFE55D57),
                                fontSize: 22,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            ElevatedButton(
                              onPressed: () => context
                                  .read<TestCubit>()
                                  .setPageMode(TestPageMode.result),
                              child: Text('Следующий вопрос'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Expanded(child: CourseStepsWidget())
                ],
              )
            ],
          ),
        )));
  }
}
