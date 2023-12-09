/*import 'package:flutter/material.dart';

class Nt extends StatefulWidget {
  Nt({super.key, required this.courseData}) {
    courseData.subjectPlan != null && courseData.subjectPlan!.isNotEmpty
        ? {isOpen = false, isTapable = true}
        : {isOpen = false, isTapable = false};
  }
  late bool isOpen;
  late bool isTapable;
  final EducationPlanModel courseData;

  @override
  State<Nt> createState() => _NtState();
}

class _NtState extends State<Nt> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
   

    return Column(
      children: [
        GestureDetector(
          onTap: widget.isTapable
              ? () => setState(() {
                    widget.isOpen = !widget.isOpen;
                  })
              : null,
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${widget.courseData.semestr} семестр',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        const TextSpan(text: '  '),
                        TextSpan(
                          text: '${widget.courseData.course} курс',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedRotation(
                  turns: widget.isOpen ? -0.5 : 0,
                  duration: const Duration(milliseconds: 100),
                  child:
                      SvgPicture.asset('assets/svg_icons/arrow_down.svg', height: 20, width: 20, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        widget.courseData.subjectPlan != null
            ? AnimatedCrossFade(
                firstChild: const SizedBox(width: double.infinity),
                secondChild: Column(
                  children: widget.courseData.subjectPlan!
                      .map((subjectPlan) => SubjectCard(subjectPlan: subjectPlan))
                      .toList(),
                ),
                crossFadeState: widget.isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 200),
              )
            : const SizedBox(),
      ],
    );
  }
}*/