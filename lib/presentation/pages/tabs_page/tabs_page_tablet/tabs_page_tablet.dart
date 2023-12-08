import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../widgets/enter_class_button_mobile.dart';
import '../tabs_page_mobile/components/drawer_mobile.dart';

class TabsPageTablet extends StatelessWidget {
  const TabsPageTablet({super.key});

  static Page<void> page() => const MaterialPage<void>(child: TabsPageTablet());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
