import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/achiviements_page/components/achiviement_container.dart';

class RowContainers extends StatelessWidget {
  const RowContainers({super.key});

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
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
              height: 320,
              padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Последние достижения',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(height: 36),
                Row(
                  children: [
                    Expanded(child: AchivCard(achievement: articlesList[0])),
                    const SizedBox(width: 24),
                    Expanded(child: AchivCard(achievement: articlesList[0]))
                  ],
                )
              ])),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Container(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
              width: double.infinity,
              height: 320,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Ежедневная активность',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/chart.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ])),
        ),
      ],
    );
  }
}
