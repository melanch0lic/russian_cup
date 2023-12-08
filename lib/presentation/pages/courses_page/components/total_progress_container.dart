import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class TotalProgressContainer extends StatelessWidget {
  const TotalProgressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Общая успеваемость',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        SimpleCircularProgressBar(
                          size: 200,
                          backColor: const Color.fromRGBO(246, 247, 249, 1),
                          progressColors: const [Color.fromRGBO(55, 114, 255, 1)],
                          startAngle: 180,
                          valueNotifier: ValueNotifier(55),
                          onGetText: (double value) {
                            return Text('${value.toInt()}%',
                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 46));
                          },
                        ),
                      ],
                    ),
                  ],
                )
              ]),
        ));
  }
}
