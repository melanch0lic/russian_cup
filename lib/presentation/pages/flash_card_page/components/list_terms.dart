import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ListTerms extends StatelessWidget {
  const ListTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Список терминов',
                style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(16),
                      lineHeight: 8,
                      percent: 1 / 6,
                      progressColor: const Color.fromRGBO(55, 114, 255, 1),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('1/6',
                      style: TextStyle(color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
              const SizedBox(height: 24),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text(
                                '${index + 1}. ',
                                style: const TextStyle(
                                    color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                'Пентест',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ]),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/svg_icons/cross.svg'),
                            )
                          ],
                        ),
                        const SizedBox(height: 16)
                      ],
                    );
                  }),
            ],
          ),
        ));
  }
}
