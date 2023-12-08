import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DirectionProgreessContainer extends StatelessWidget {
  const DirectionProgreessContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 128,
              height: 128,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/test_2.png'),
                fit: BoxFit.fill,
              ))),
          const SizedBox(width: 16),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Защита персональных данных',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromRGBO(29, 31, 36, 1))),
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                LinearPercentIndicator(
                  barRadius: const Radius.circular(16),
                  lineHeight: 8,
                  percent: 0.95,
                  progressColor: const Color.fromRGBO(255, 179, 35, 1),
                  width: 265,
                ),
                const SizedBox(width: 12),
                const Text('95%',
                    style: TextStyle(color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16, fontWeight: FontWeight.w600))
              ],
            ),
            const SizedBox(height: 11),
          ])
        ],
      ),
    );
  }
}
