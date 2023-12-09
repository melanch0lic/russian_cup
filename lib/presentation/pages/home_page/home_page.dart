import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/achiviements_page/components/achiviement_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/direction_progress_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/total_progress_container.dart';
import 'package:russia_icpc/presentation/pages/home_page/components/continie_course_container.dart';
import 'package:russia_icpc/presentation/pages/home_page/components/progress_courses_container.dart';
import 'package:russia_icpc/presentation/pages/home_page/components/row_containers.dart';
import 'package:russia_icpc/presentation/widgets/all_lines_learn.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final terms = ['Фишинг', ' FIDO', 'Keylogger', 'Backdoor'];
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Добро пожаловать!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 36),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          ProgressCoursesContainer(),
                          SizedBox(height: 24),
                          ContinieCourseContainer(),
                          SizedBox(height: 24),
                          RowContainers()
                        ],
                      )),
                  const SizedBox(width: 24),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Повторение терминов',
                                      style: TextStyle(
                                          color: Color.fromRGBO(29, 31, 36, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'Перейти',
                                        style: TextStyle(
                                            color: Color.fromRGBO(55, 114, 255, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                SizedBox(
                                  height: 100,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: terms.length,
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 38),
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                                  color: Color.fromRGBO(246, 247, 250, 1)),
                                              child: Center(
                                                child: Text(
                                                  terms[index],
                                                  style: const TextStyle(
                                                      color: Color.fromRGBO(55, 114, 255, 1),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 12)
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          )),
                      const SizedBox(height: 24),
                      const TotalProgressContainer(),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                        child: const AllLinesLearn(),
                      ),
                    ],
                  )),
                ])
              ],
            ),
          ),
        ));
  }
}
