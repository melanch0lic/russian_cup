import 'package:flutter/material.dart';

class AgePage extends StatelessWidget {
  const AgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/Background.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(64),
            width: 450,
            decoration: BoxDecoration(
              borderRadius: (BorderRadius.circular(32)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: const Text(
                    'Сколько вам лет?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1D1F24),
                      fontSize: 24,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Эта информация нужна нам, чтобы подстроить обучающую программу под вас',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF3A3D44),
                    fontSize: 14,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 36),
                Text('Возраст'),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: '23'),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                ElevatedButton(
                  key: const Key('loginForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFF3772FF),
                  ),
                  onPressed: () {},
                  child: const Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text('Потвердить',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  )),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
