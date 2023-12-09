import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_description.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_info_and_begin.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

import 'openable_card.dart';

class StudyCoursePage extends StatelessWidget {
  const StudyCoursePage({super.key});

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
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const CourseDescription(),
                        const SizedBox(height: 24),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 32, bottom: 36),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Программа курса',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(29, 31, 36, 1)),
                                  ),
                                  SizedBox(height: 24),
                                  ProgramOpenableCard(),
                                ])),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Expanded(child: CourseInfoAndBegin())
                ],
              )
            ],
          ),
        )));
  }
}
