import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:russia_icpc/presentation/pages/achiviements_page/components/achiviement_container.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class AchiviementsPage extends StatelessWidget {
  const AchiviementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final articlesList = [
      Achievement(
        isCompleted: true,
        name: 'Пройти один курс',
        countPoints: 20,
      ),
      Achievement(
        isCompleted: true,
        name: 'Пройти 5 курсов',
        countPoints: 50,
      ),
      Achievement(
        isCompleted: true,
        name: 'Пройти 15 курсов',
        countPoints: 100,
      ),
      Achievement(
        isCompleted: false,
        name: 'Потратить очки в магазине',
        countPoints: 50,
      ),
      Achievement(
        isCompleted: false,
        name: 'Пройти все доступыне курсы',
        countPoints: 250,
      ),
      Achievement(
        isCompleted: true,
        name: 'Достичь 100% в любом направлении',
        countPoints: 100,
      ),
      Achievement(
        isCompleted: false,
        name: 'Пройти курсы всех уровней сложности',
        countPoints: 150,
      ),
      Achievement(
        isCompleted: false,
        name: 'Пройти тест повторно',
        countPoints: 50,
      ),
      Achievement(
        isCompleted: false,
        name: 'Достигнуть 100% успеваемости',
        countPoints: 500,
      ),
    ];
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const UserInfoExitWidget(),
                  const SizedBox(height: 36),
                  AchiviementContainer(
                    achievementList: articlesList,
                  )
                ]))));
  }
}
