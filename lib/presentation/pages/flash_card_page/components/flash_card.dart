import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: height * 0.25,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
              child: const Center(
                  child: Text(
                'Нажмите, чтобы начать',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Color.fromRGBO(58, 61, 68, 1)),
              ))),
        ),
        const SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Color.fromRGBO(55, 114, 255, 1), width: 2)),
              ),
              onPressed: () {},
              child: const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Предыдущее слово',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color.fromRGBO(55, 114, 255, 1))),
              )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
              ),
              onPressed: () {},
              child: const Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Следующее слово',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
              )),
            )
          ],
        ),
      ],
    );
  }
}
