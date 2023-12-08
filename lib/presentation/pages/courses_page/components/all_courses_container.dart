import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_container.dart';

class AllCoursesContainer extends StatelessWidget {
  const AllCoursesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
      child: const Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
        Row(
          children: [Text('Все курсы'), SizedBox(width: 32), Text('В процессе')],
        ),
        SizedBox(height: 16),
        LinearProgressIndicator(),
        SizedBox(height: 24),
        CourseContainer(
          assetImage: 'assets/images/test_1.png',
          name: 'Финансовые нарушения',
          description:
              'В эпоху глобальной информатизации надежная и эффективная инфраструктура финансового рынка (ИФР) Российской Федерации играет важную роль в финансовой системе и экономике',
          condition: 'В процессе',
          age: 16,
        ),
        SizedBox(height: 16),
      ]),
    );
  }
}
