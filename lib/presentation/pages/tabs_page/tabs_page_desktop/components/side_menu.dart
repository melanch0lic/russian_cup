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
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: BlocBuilder<TabsCubit, TabsState>(
          builder: (context, state) => Column(
            children: [
              const Center(
                  child: FlutterLogo(
                size: 64,
              )),
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
                svgUrl: 'assets/svg_icons/award.svg',
                title: 'Достижения',
              ),
              SideMenuItem(
                index: 4,
                isActive: state.selectedIndex == 4 ? true : false,
                svgUrl: 'assets/svg_icons/news.svg',
                title: 'Новости',
              ),
              SideMenuItem(
                index: 5,
                isActive: state.selectedIndex == 5 ? true : false,
                svgUrl: 'assets/svg_icons/articles.svg',
                title: 'Статьи',
              ),
              const Spacer(),
              SizedBox(
                height: 40,
                width: 160,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<AppBloc>().add(AppLogoutRequested());
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                        width: 2, color: Color.fromRGBO(107, 78, 255, 1)),
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromRGBO(107, 78, 255, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                  ),
                  child: Center(
                      child: Row(
                    children: [
                      const Icon(Icons.logout,
                          color: Color.fromRGBO(107, 78, 255, 1)),
                      const SizedBox(width: 8),
                      Text(
                        'Выйти',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(107, 78, 255, 1)),
                      ),
                    ],
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 32, left: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
