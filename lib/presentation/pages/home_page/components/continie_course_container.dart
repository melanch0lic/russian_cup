import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/cubit/courses_cubit.dart';
import 'package:russia_icpc/presentation/pages/courses_page/cubit/courses_state.dart';

class ContinieCourseContainer extends StatelessWidget {
  const ContinieCourseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Продолжить курсы',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
          ),
          SizedBox(height: 24),
        ]));
  }
}
