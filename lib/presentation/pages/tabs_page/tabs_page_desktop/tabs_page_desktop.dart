import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russia_icpc/presentation/pages/tabs_page/cubit/tabs_cubit.dart';

import 'components/side_menu.dart';

class TabsPageDesktop extends StatelessWidget {
  const TabsPageDesktop({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: TabsPageDesktop());

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
                  color: Color.fromRGBO(236, 239, 243, 1),
                  child: PageView(
                    controller: context.read<TabsCubit>().controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      Center(
                        child: Text('Главная'),
                      ),
                      Center(
                        child: Text('Профиль'),
                      ),
                      Center(
                        child: Text('Результаты'),
                      ),
                      Center(
                        child: Text('Регистрация'),
                      ),
                      Center(
                        child: Text('Админка'),
                      ),
                      Center(
                        child: Text('Ещё нет аккаунта?'),
                      )
                    ],
                  )))
        ],
      )),
    );
  }
}
