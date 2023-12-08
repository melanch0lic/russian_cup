import 'package:flutter/material.dart';

import '../../../widgets/enter_class_button_mobile.dart';

class TabsPageMobile extends StatelessWidget {
  const TabsPageMobile({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageMobile());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawerMobile(),
      appBar: AppBar(
          //  title: const Text('Привет, Заур!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          actions: const [
            EnterClassButtonMobile(),
          ]),
      body: Container(
          color: const Color.fromRGBO(246, 247, 249, 1),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              Center(
                child: Text('Главная'),
              )
            ],
          )),
    );
  }
}
