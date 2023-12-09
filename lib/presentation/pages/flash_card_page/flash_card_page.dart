import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/flash_card_page/components/flash_card.dart';
import 'package:russia_icpc/presentation/pages/flash_card_page/components/list_terms.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class FlashCardPage extends StatelessWidget {
  const FlashCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  UserInfoExitWidget(),
                  SizedBox(height: 36),
                  Text('Флэшкарты',
                      style:
                          TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32)),
                  SizedBox(height: 36),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(flex: 2, child: FlashCard()),
                    SizedBox(width: 24),
                    Expanded(child: ListTerms())
                  ])
                ]))));
  }
}
