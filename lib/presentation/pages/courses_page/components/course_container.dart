import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:russia_icpc/data/models/course.dart';
import 'package:russia_icpc/presentation/widgets/difficult_course.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    super.key,
    required this.course,
  });

  final Course course;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(246, 247, 250, 1),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 128,
            height: 128,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/test_1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(course.name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(width: 8),
                    DifficultCourse(
                      difficulty: course.difficulty,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  course.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      decoration: BoxDecoration(
                          color: course.progress == 100
                              ? Color.fromRGBO(188, 255, 194, 1)
                              : Color.fromRGBO(206, 228, 248, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Text(
                        course.progress <= 0
                            ? 'Не начат'
                            : course.progress == 100
                                ? 'Пройден'
                                : 'В процессе',
                        style: TextStyle(
                            color: course.progress == 100
                                ? Color.fromRGBO(93, 146, 61, 1)
                                : Color.fromRGBO(55, 114, 255, 1)),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: LinearPercentIndicator(
                              barRadius: const Radius.circular(16),
                              lineHeight: 8,
                              percent: course.progress / 100,
                              progressColor:
                                  const Color.fromRGBO(55, 114, 255, 1),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('${course.progress}%',
                              style: const TextStyle(
                                  color: Color.fromRGBO(58, 61, 68, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
