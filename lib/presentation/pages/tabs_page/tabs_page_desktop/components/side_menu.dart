import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/app_bloc.dart';
import 'package:russia_icpc/presentation/pages/tabs_page/cubit/tabs_cubit.dart';

import '../../cubit/tabs_state.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: BlocBuilder<TabsCubit, TabsState>(
          builder: (context, state) => Column(
            children: [
              Center(
                child: Container(
                    width: 210,
                    height: 70,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.fill,
                    ))),
              ),
              const SizedBox(height: 32),
              SideMenuItem(
                index: 0,
                isActive: state.selectedIndex == 0 ? true : false,
                svgUrl: 'assets/svg_icons/overview.svg',
                title: 'Обзор',
              ),
              SideMenuItem(
                index: 1,
                isActive: state.selectedIndex == 1 ? true : false,
                svgUrl: 'assets/svg_icons/courses.svg',
                title: 'Курсы',
              ),
              SideMenuItem(
                index: 2,
                isActive: state.selectedIndex == 2 ? true : false,
                svgUrl: 'assets/svg_icons/play.svg',
                title: 'Тестирование',
              ),
              SideMenuItem(
                index: 3,
                isActive: state.selectedIndex == 3 ? true : false,
                svgUrl: 'assets/svg_icons/card.svg',
                title: 'Флэшкарты',
              ),
              SideMenuItem(
                index: 4,
                isActive: state.selectedIndex == 4 ? true : false,
                svgUrl: 'assets/svg_icons/award.svg',
                title: 'Достижения',
              ),
              SideMenuItem(
                index: 5,
                isActive: state.selectedIndex == 5 ? true : false,
                svgUrl: 'assets/svg_icons/shop.svg',
                title: 'Магазин',
              ),
              SideMenuItem(
                index: 6,
                isActive: state.selectedIndex == 6 ? true : false,
                svgUrl: 'assets/svg_icons/news.svg',
                title: 'Новости',
              ),
              SideMenuItem(
                index: 7,
                isActive: state.selectedIndex == 7 ? true : false,
                svgUrl: 'assets/svg_icons/articles.svg',
                title: 'Статьи',
              ),
              SideMenuItem(
                index: 8,
                isActive: state.selectedIndex == 8 ? true : false,
                svgUrl: 'assets/svg_icons/articles.svg',
                title: 'Практика',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
