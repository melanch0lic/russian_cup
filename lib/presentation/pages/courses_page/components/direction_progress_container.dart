import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DirectionProgreessContainer extends StatelessWidget {
  const DirectionProgreessContainer(
      {super.key, required this.assetImage, required this.title, required this.precent, required this.color});
  final String assetImage;
  final String title;
  final double precent;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 128,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(assetImage),
                fit: BoxFit.fill,
              ))),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromRGBO(29, 31, 36, 1))),
                  Row(
                    children: [
                      Expanded(
                        child: LinearPercentIndicator(
                          barRadius: const Radius.circular(16),
                          lineHeight: 8,
                          percent: precent / 100,
                          progressColor: color,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text('$precent%',
                          style: const TextStyle(
                              color: Color.fromRGBO(58, 61, 68, 1), fontSize: 16, fontWeight: FontWeight.w600))
                    ],
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
