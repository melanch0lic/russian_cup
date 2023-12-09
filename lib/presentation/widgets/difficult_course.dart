import 'package:flutter/material.dart';

class DifficultCourse extends StatelessWidget {
  final int difficulty;
  const DifficultCourse({super.key, required this.difficulty});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: difficulty == 1
            ? Color.fromRGBO(188, 255, 194, 1)
            : difficulty == 2
                ? Color.fromRGBO(231, 231, 255, 1)
                : Color.fromRGBO(255, 235, 234, 1),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
            difficulty == 1
                ? 'assets/images/baby.png'
                : difficulty == 2
                    ? 'assets/images/teenager.png'
                    : 'assets/images/man.png',
            width: 20,
            height: 20),
        const SizedBox(width: 4),
        Text(
          difficulty == 1
              ? 'Начальный'
              : difficulty == 2
                  ? 'Средний'
                  : 'Продвинутый',
          style: TextStyle(
              color: difficulty == 1
                  ? Color.fromRGBO(93, 146, 61, 1)
                  : difficulty == 2
                      ? Color.fromRGBO(118, 98, 234, 1)
                      : Color.fromRGBO(239, 116, 109, 1),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
