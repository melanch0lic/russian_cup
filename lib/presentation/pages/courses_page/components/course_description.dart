import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_icpc/presentation/pages/courses_page/cubit/courses_cubit.dart';
import 'package:russia_icpc/presentation/widgets/difficult_course.dart';

import '../cubit/courses_state.dart';

class CourseDescription extends StatelessWidget {
  const CourseDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) => Container(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () =>
                      context.read<CoursesCubit>().setPageMode(PageMode.all),
                  child: SvgPicture.asset('assets/svg_icons/back_arrow.svg',
                      height: 24, width: 24),
                ),
                const SizedBox(width: 4),
                const Text('Курсы',
                    style: TextStyle(
                        color: Color.fromRGBO(29, 31, 36, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w600))
              ],
            ),
            const SizedBox(height: 24),
            Text(
              state.selectedCourse!.name,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(29, 31, 36, 1)),
            ),
            const SizedBox(height: 24),
            DifficultCourse(
              difficulty: state.selectedCourse!.diffuculty,
            ),
            const SizedBox(height: 36),
            const Text(
              'Описание',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(29, 31, 36, 1)),
            ),
            const SizedBox(height: 24),
            Text(
              state.selectedCourse!.description,
              style: TextStyle(
                  color: Color.fromRGBO(58, 61, 68, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 36),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      color: const Color.fromRGBO(211, 213, 218, 1))),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Что вы узнаете',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(29, 31, 36, 1)),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Вы узнаете и поймете основные термины используемые в данной сфере. Получите представление о структуре и функционировании государственной системы обнаружения, предупреждения и ликвидации последствий компьютерных атак на информационные ресурсы Российской Федерации, правовом статусе и полномочиях государственных и негосударственных органов в ней задействованных. Ознакомитесь с основными нормативно-правовыми актами регламентирующими обеспечение кибербезопасности.',
                      style: TextStyle(
                          color: Color.fromRGBO(58, 61, 68, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
