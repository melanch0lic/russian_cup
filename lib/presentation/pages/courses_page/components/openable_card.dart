import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProgramOpenableCard extends StatefulWidget {
  const ProgramOpenableCard({super.key});

  @override
  State<ProgramOpenableCard> createState() => _ProgramOpenableCardState();
}

class _ProgramOpenableCardState extends State<ProgramOpenableCard> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => setState(() => isOpen = !isOpen),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(211, 213, 218, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Кибербезопасность и киберугрозы',
                      style: TextStyle(
                          color: theme.textTheme.bodyMedium!.color,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  AnimatedRotation(
                    turns: isOpen ? -0.5 : 0,
                    duration: const Duration(milliseconds: 100),
                    child: SvgPicture.asset('assets/svg_icons/Angle.svg',
                        height: 20, width: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            AnimatedCrossFade(
              firstChild: const SizedBox(width: double.infinity),
              secondChild: const SubjectGradeWidget(),
              crossFadeState:
                  isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 200),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectGradeWidget extends StatelessWidget {
  const SubjectGradeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color.fromRGBO(60, 159, 182, 1)))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Методы совершения киберпреступлений: как не попасться на уловки',
                style: TextStyle(
                    color: theme.textTheme.bodyMedium!.color,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              const SizedBox(height: 10),
              Text(
                'Интернет вещей: понятие и угрозы от него исходящие',
                style: TextStyle(
                    color: theme.textTheme.bodyMedium!.color,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              const SizedBox(height: 10),
              Text(
                'Практика',
                style: TextStyle(
                    color: theme.textTheme.bodyMedium!.color,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
