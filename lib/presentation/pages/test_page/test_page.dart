import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/test_page/components/test_mode_page.dart';
import 'package:russia_icpc/presentation/pages/test_page/cubit/test_cubit.dart';

import '../../widgets/user_exit_info_widget.dart';
import 'cubit/test_state.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestCubit>(
      create: (context) => TestCubit(),
      child: BlocBuilder<TestCubit, TestState>(
        builder: (context, state) => state.currentPageMode == TestPageMode.test
            ? TestModePage()
            : state.currentPageMode == TestPageMode.result
                ? Scaffold(
                    backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
                    body: SingleChildScrollView(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 36, left: 36, right: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const UserInfoExitWidget(),
                            const SizedBox(height: 36),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(24),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.6,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24)),
                                      ),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Ваш результат: ',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D1F24),
                                                      fontSize: 32,
                                                      fontFamily: 'Open Sans',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '24/',
                                                    style: TextStyle(
                                                      color: Color(0xFF3772FF),
                                                      fontSize: 32,
                                                      fontFamily: 'Open Sans',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '35',
                                                    style: TextStyle(
                                                      color: Color(0xFF1D1F24),
                                                      fontSize: 32,
                                                      fontFamily: 'Open Sans',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              'Мы подобрали для вас несколько курсов для повышения уровня ваших знаний',
                                              textAlign: TextAlign.center,
                                            ),
                                            const SizedBox(height: 24),
                                            Image.asset(
                                                'assets/images/Courses.png'),
                                            ElevatedButton(
                                                onPressed: () {
                                                  context
                                                      .read<TestCubit>()
                                                      .setPageMode(
                                                          TestPageMode.initial);
                                                },
                                                child: Text('Пройти еще раз')),
                                          ]),
                                    )),
                                const SizedBox(width: 24),
                                Expanded(child: Container())
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                : Scaffold(
                    backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
                    body: SingleChildScrollView(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 36, left: 36, right: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const UserInfoExitWidget(),
                            const SizedBox(height: 36),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(24),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.6,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24)),
                                      ),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Тестирование',
                                              style: TextStyle(
                                                color: Color(0xFF1D1F24),
                                                fontSize: 32,
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                            Text(
                                              'Чтобы определить ваш уровень знаний в области кибербезопасности, пройдите общее тестирование.По его результатам которого мы сможем оценить ваши знания во всех направлениях кибербезопасности и предложить вам курсы, которые помогут заполнить пробелы.',
                                              textAlign: TextAlign.center,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  context
                                                      .read<TestCubit>()
                                                      .setPageMode(
                                                          TestPageMode.test);
                                                },
                                                child: Text('Начать тест')),
                                          ]),
                                    )),
                                const SizedBox(width: 24),
                                Expanded(child: Container())
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
      ),
    );
  }
}
