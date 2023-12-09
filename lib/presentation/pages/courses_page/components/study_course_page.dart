import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_description.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/course_steps_widget.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

import '../cubit/courses_cubit.dart';
import '../cubit/courses_state.dart';
import 'openable_card.dart';

class StudyCoursePage extends StatelessWidget {
  const StudyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const UserInfoExitWidget(),
              const SizedBox(height: 36),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 32, bottom: 36),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () => context
                                            .read<CoursesCubit>()
                                            .setPageMode(PageMode.detail),
                                        child: SvgPicture.asset(
                                            'assets/svg_icons/back_arrow.svg',
                                            height: 24,
                                            width: 24),
                                      ),
                                      const SizedBox(width: 4),
                                      const Text('Курсы',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(29, 31, 36, 1),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600))
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  Text(
                                    '1. Направления: Криминалистика',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(29, 31, 36, 1)),
                                  ),
                                  SizedBox(height: 24),
                                  SizedBox(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.3,
                                    child: Markdown(
                                      selectable: true,
                                      data:
                                          'Задачи криминалиста включают: разбор киберинцидентов восстановление данных поиск и нахождение виновных  Криминалистика – очень сложная сфера для освоения и, к сожалению, является одним из самых не развитых направлений в Казахстане. На данный момент штат криминалистов имеется только при Министерстве внутренних дел, КНБ и у ЦАРКА*. Если сотрудники МВД поймают хакера, им необходимо доказать, что именно этот человек с такого-то компьютера взломал систему. Но из-за того, что наблюдается недостаток кадров, зачастую сложно доказать наличие киберинцидента. *ЦАРКА – Центр Анализа и Расследования Кибер Атак. ЦАРКА является первым частным специализированным центром по кибербезопасности в Казахстане.',
                                    ),
                                  ),
                                  Image.asset(
                                      'assets/images/study_course_image.png'),
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Следущее задание',
                                            style: TextStyle(fontSize: 18),
                                          ))
                                    ],
                                  )
                                ])),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Expanded(child: CourseStepsWidget())
                ],
              )
            ],
          ),
        )));
  }
}
