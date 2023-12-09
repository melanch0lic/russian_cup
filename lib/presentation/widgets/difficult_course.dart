import 'package:flutter/material.dart';

class DifficultCourse extends StatelessWidget {
  const DifficultCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)), color: Color.fromRGBO(255, 235, 234, 1)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/man.png', width: 20, height: 20),
        const SizedBox(width: 4),
        const Text(
          'Продвинутый',
          style: TextStyle(color: Color.fromRGBO(239, 116, 109, 1), fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
