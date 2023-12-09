import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestTasksWidget extends StatelessWidget {
  const TestTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Кибербезопасность',
          style: TextStyle(
            color: Color(0xFF1D1F24),
            fontSize: 24,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  barRadius: const Radius.circular(16),
                  lineHeight: 8,
                  percent: 1,
                  progressColor: const Color.fromRGBO(55, 114, 255, 1),
                ),
              ),
              const SizedBox(width: 8),
              Text('2/2',
                  style: TextStyle(
                      color: Color.fromRGBO(58, 61, 68, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1. Направление: Криминалистика',
              style: TextStyle(
                color: Color(0xFF3A3D44),
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width: 24,
              height: 24,
              child: Center(
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: Icon(
                        Icons.check,
                        size: 15,
                        color: Colors.white,
                      ))),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2. Практика',
              style: TextStyle(
                color: Color(0xFF3A3D44),
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              width: 24,
              height: 24,
              child: Center(
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: Icon(
                        Icons.check,
                        size: 15,
                        color: Colors.white,
                      ))),
            ),
          ],
        )
      ]),
    );
  }
}
