import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russia_icpc/presentation/pages/achiviements_page/achiviements_page.dart';
import 'package:russia_icpc/presentation/pages/articles_page/articles_page.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/content_course_page.dart';
import 'package:russia_icpc/presentation/pages/courses_page/courses_page.dart';
import 'package:russia_icpc/presentation/pages/home_page/home_page.dart';
import 'package:russia_icpc/presentation/pages/news_page/news_page.dart';
import 'package:russia_icpc/presentation/pages/tabs_page/cubit/tabs_cubit.dart';
import 'package:russia_icpc/presentation/pages/test_page/test_page.dart';

import '../../shop_page/shop_page.dart';
import 'components/side_menu.dart';

class TabsPageDesktop extends StatelessWidget {
  const TabsPageDesktop({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageDesktop());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: SideMenu()),
          Expanded(
              flex: 5,
              child: Container(
                  color: const Color.fromRGBO(236, 239, 243, 1),
                  child: PageView(
                    controller: context.read<TabsCubit>().controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      HomePage(),
                      CoursesPage(),
                      TestPage(),
                      AchiviementsPage(),
                      ShopPage(),
                      NewsPage(),
                      ArticlesPage(),
                    ],
                  )))
        ],
      )),
    );
  }
}
