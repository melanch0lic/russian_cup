import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_container.dart';
import 'package:russia_icpc/presentation/pages/courses_page/cubit/courses_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../cubit/courses_state.dart';

class AllCoursesContainer extends StatelessWidget {
  const AllCoursesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
      margin: EdgeInsets.only(bottom: 24),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Курсы',
              style: TextStyle(
                  color: Color.fromRGBO(29, 31, 36, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text('Все курсы',
                    style: TextStyle(
                        color: Color.fromRGBO(29, 31, 36, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(width: 32),
                Text('В процессе',
                    style: TextStyle(
                        color: Color.fromRGBO(29, 31, 36, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16))
              ],
            ),
            SizedBox(height: 16),
            // LinearProgressIndicator(),
            BlocBuilder<CoursesCubit, CoursesState>(
                builder: (context, state) => SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    child: state.isLoading
                        ? Center(
                            child: SizedBox(
                                width: 100,
                                height: 100,
                                child: CircularProgressIndicator(
                                    color: Color.fromRGBO(55, 114, 255, 1))),
                          )
                        : ListView.builder(
                            itemCount: state.courses.length,
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () => context
                                      .read<CoursesCubit>()
                                      .setPageMode(PageMode.detail),
                                  child: CourseContainer(
                                    course: state.courses[index],
                                  ),
                                )))),
          ]),
    );
  }
}
