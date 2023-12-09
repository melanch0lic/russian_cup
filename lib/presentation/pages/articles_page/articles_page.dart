import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/all_courses_container.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const UserInfoExitWidget(),
                  const SizedBox(height: 36),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                            child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Статьи',
                                    style: TextStyle(
                                        color: Color.fromRGBO(29, 31, 36, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24),
                                  ),
                                  SizedBox(height: 24),
                                  Row(
                                    children: [
                                      Text('Все статьи',
                                          style: TextStyle(
                                              color: Color.fromRGBO(29, 31, 36, 1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      SizedBox(width: 24),
                                      Text('Руководства',
                                          style: TextStyle(
                                              color: Color.fromRGBO(29, 31, 36, 1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      SizedBox(width: 24),
                                      Text('Ликбез',
                                          style: TextStyle(
                                              color: Color.fromRGBO(29, 31, 36, 1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      SizedBox(width: 24),
                                      Text('Истории',
                                          style: TextStyle(
                                              color: Color.fromRGBO(29, 31, 36, 1),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                    ],
                                  ),
                                  SizedBox(height: 24),
                                  ArticleContainer(),
                                  SizedBox(height: 24),
                                  ArticleContainer(),
                                  SizedBox(height: 24),
                                  ArticleContainer(),
                                ]))),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 36),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Последние утечки данных',
                              style: TextStyle(
                                  color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                            SizedBox(height: 24),
                            LeakContainer(),
                            SizedBox(height: 16),
                            LeakContainer(),
                            SizedBox(height: 16),
                            LeakContainer(),
                            SizedBox(height: 16),
                            LeakContainer(),
                          ],
                        ),
                      ),
                    )
                  ])
                ]))));
  }
}

class LeakContainer extends StatelessWidget {
  const LeakContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage('assets/images/del.png'),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivery Club',
                style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 20)),
            SizedBox(height: 4),
            Text('2.2 млн заказов',
                style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w400, fontSize: 18)),
          ],
        )
      ],
    );
  }
}

class ArticleContainer extends StatelessWidget {
  const ArticleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(246, 247, 250, 1), borderRadius: BorderRadius.all(Radius.circular(16))),
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
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Как работает хэширование',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 31, 36, 1),
                    )),
                SizedBox(height: 12),
                Text(
                  'Хэш-функции применяются в базах данных для оптимизации запросов,в структурах данных для ускорения работы, в безопасности для защиты данных. Почти каждое взаимодействие с технологией включает в себя хэш-функции.',
                  maxLines: 3,
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                ),
                SizedBox(height: 12),
                Text('9.12.2023',
                    style:
                        TextStyle(color: Color.fromRGBO(163, 165, 171, 1), fontSize: 14, fontWeight: FontWeight.w600))
              ],
            ),
          )
        ]));
  }
}
