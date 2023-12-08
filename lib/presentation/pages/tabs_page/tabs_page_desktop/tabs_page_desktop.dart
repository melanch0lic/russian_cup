import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/module.dart';
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
                  color: const Color.fromRGBO(246, 247, 249, 1),
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [],
                  )))
        ],
      )),
    );
  }
}
