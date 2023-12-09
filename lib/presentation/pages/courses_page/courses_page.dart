import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/domain/repository/courses_repository.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/all_courses_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/direction_progress_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/study_course_page.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/total_progress_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/cubit/courses_cubit.dart';
import 'package:russia_icpc/presentation/widgets/all_lines_learn.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

import 'components/detail_course_page.dart';
import 'cubit/courses_state.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoursesCubit>(
      create: (context) => CoursesCubit(context.read<CoursesRepository>()),
      child: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) => state.pageMode == PageMode.detail

            ? DetailCoursePage()
            : state.pageMode == PageMode.study
                ? StudyCoursePage()
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
                                const Expanded(
                                    flex: 2, child: AllCoursesContainer()),
                                const SizedBox(width: 24),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const TotalProgressContainer(),
                                      const SizedBox(height: 24),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 24,
                                            right: 24,
                                            top: 32,
                                            bottom: 36),
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(24))),
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Успеваемость по направлениям',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(height: 24),
                                            DirectionProgreessContainer(),
                                            SizedBox(height: 16),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
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
