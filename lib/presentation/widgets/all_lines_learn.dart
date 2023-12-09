import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/direction_progress_container.dart';

class AllLinesLearn extends StatelessWidget {
  const AllLinesLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DirectionProgreessContainer(
          assetImage: 'assets/images/test_1.png',
          title: 'Финансовые нарушения',
          precent: 34,
          color: Color.fromRGBO(211, 119, 243, 1),
        ),
        SizedBox(height: 16),
        DirectionProgreessContainer(
          assetImage: 'assets/images/protect.png',
          title: 'Защита персональных данных',
          precent: 47,
          color: Color.fromRGBO(255, 179, 35, 1),
        ),
        SizedBox(height: 16),
        DirectionProgreessContainer(
          assetImage: 'assets/images/my_protect.png',
          title: 'Защита личных и цифровых устройств',
          precent: 86,
          color: Color.fromRGBO(118, 98, 234, 1),
        ),
        SizedBox(height: 16),
        DirectionProgreessContainer(
          assetImage: 'assets/images/pravila.png',
          title: 'Правила работы в сети интернет',
          precent: 11,
          color: Color.fromRGBO(35, 193, 107, 1),
        ),
      ],
    );
  }
}
