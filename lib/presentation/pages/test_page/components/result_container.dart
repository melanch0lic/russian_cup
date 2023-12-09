import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(48),
      child: Column(children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Ваш результат: ',
                style: TextStyle(
                  color: Color(0xFF1D1F24),
                  fontSize: 32,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '24/',
                style: TextStyle(
                  color: Color(0xFF3772FF),
                  fontSize: 32,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              TextSpan(
                text: '35',
                style: TextStyle(
                  color: Color(0xFF1D1F24),
                  fontSize: 32,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
