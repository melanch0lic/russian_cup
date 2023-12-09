import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressCoursesContainer extends StatelessWidget {
  const ProgressCoursesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Прогресс по курсам',
              style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
            ),
            const SizedBox(height: 24),
            Container(
                width: double.infinity,
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                            child: Row(
                          children: [
                            Stack(
                              children: [
                                SimpleCircularProgressBar(
                                  size: 100,
                                  progressStrokeWidth: 6,
                                  backStrokeWidth: 6,
                                  backColor: const Color.fromRGBO(246, 247, 249, 1),
                                  progressColors: const [Color.fromRGBO(66, 148, 130, 1)],
                                  startAngle: 180,
                                  valueNotifier: ValueNotifier(84),
                                  onGetText: (double value) {
                                    return Text('${value.toInt()}%',
                                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Средний процент прохождения',
                                style: TextStyle(color: Color.fromRGBO(26, 29, 31, 1), fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 38),
                            const VerticalDivider(
                              width: 1,
                              indent: 1,
                              endIndent: 1,
                              thickness: 1,
                              color: Color.fromRGBO(211, 213, 218, 1),
                            ),
                            const SizedBox(width: 38),
                            Stack(
                              children: [
                                SimpleCircularProgressBar(
                                  size: 100,
                                  progressStrokeWidth: 6,
                                  backStrokeWidth: 6,
                                  backColor: const Color.fromRGBO(246, 247, 249, 1),
                                  progressColors: const [Color.fromRGBO(255, 179, 35, 1)],
                                  startAngle: 180,
                                  valueNotifier: ValueNotifier(70),
                                  onGetText: (double value) {
                                    return Text('${value.toInt()}%',
                                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Курсов пройдено полностью',
                                style: TextStyle(color: Color.fromRGBO(26, 29, 31, 1), fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(width: 38),
                            const VerticalDivider(
                              width: 1,
                              indent: 1,
                              endIndent: 1,
                              thickness: 1,
                              color: Color.fromRGBO(211, 213, 218, 1),
                            ),
                            const SizedBox(width: 38),
                            Stack(
                              children: [
                                SimpleCircularProgressBar(
                                  size: 100,
                                  progressStrokeWidth: 6,
                                  backStrokeWidth: 6,
                                  backColor: const Color.fromRGBO(246, 247, 249, 1),
                                  progressColors: const [Color.fromRGBO(211, 119, 243, 1)],
                                  startAngle: 180,
                                  valueNotifier: ValueNotifier(77),
                                  onGetText: (double value) {
                                    return Text('${value.toInt()}%',
                                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24));
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Правильных ответов',
                                style: TextStyle(color: Color.fromRGBO(26, 29, 31, 1), fontSize: 16),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                      ]),
                ))
          ],
        ));
  }
}
