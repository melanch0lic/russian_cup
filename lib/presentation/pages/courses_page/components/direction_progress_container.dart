import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DirectionProgreessContainer extends StatelessWidget {
  const DirectionProgreessContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 128,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/test_2.png'),
                fit: BoxFit.fill,
              ))),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Защита персональных данных',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(29, 31, 36, 1))),
                  Row(
                    children: [
                      Expanded(
                        child: LinearPercentIndicator(
                          barRadius: const Radius.circular(16),
                          lineHeight: 8,
                          percent: 0.95,
                          progressColor: const Color.fromRGBO(255, 179, 35, 1),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('95%',
                          style: TextStyle(
                              color: Color.fromRGBO(58, 61, 68, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
