import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Обзор',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 36),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: []),
                )
              ],
            ),
          ),
        ));
  }
}
