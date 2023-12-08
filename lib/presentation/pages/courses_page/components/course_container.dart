import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer(
      {super.key,
      required this.name,
      required this.description,
      required this.condition,
      required this.assetImage,
      required this.age});

  final String name;
  final String description;
  final String condition;
  final String assetImage;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(246, 247, 250, 1),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assetImage),
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
                    Text(name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color.fromRGBO(255, 235, 234, 1),
                      ),
                      child: Text('$age+',
                          style: const TextStyle(
                              color: Color.fromRGBO(239, 116, 109, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '$description...',
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
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(206, 228, 248, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Text(
                        condition,
                        style: const TextStyle(
                            color: Color.fromRGBO(55, 114, 255, 1)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: LinearPercentIndicator(
                              barRadius: const Radius.circular(16),
                              lineHeight: 8,
                              percent: 0.5,
                              progressColor:
                                  const Color.fromRGBO(55, 114, 255, 1),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text('50%',
                              style: TextStyle(
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
