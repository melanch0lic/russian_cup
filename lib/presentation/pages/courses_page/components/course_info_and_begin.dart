import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/courses_cubit.dart';
import '../cubit/courses_state.dart';

class CourseInfoAndBegin extends StatelessWidget {
  const CourseInfoAndBegin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/big_test_1.png'),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Text('Направление: ',
                style: TextStyle(
                    color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16)),
            Text('Финансовые нарушения',
                style: TextStyle(
                    color: Color.fromRGBO(55, 114, 255, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600))
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text('Уровень: ',
                style: TextStyle(
                    color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16)),
            Text('Начальный',
                style: TextStyle(
                    color: Color.fromRGBO(55, 114, 255, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600))
          ],
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
          ),
          onPressed: () {
            context.read<CoursesCubit>().setPageMode(PageMode.study);
          },
          child: const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text('Пройти курс',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          )),
        )
      ]),
    );
  }
}
