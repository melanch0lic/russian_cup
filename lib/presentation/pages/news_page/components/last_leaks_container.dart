import 'package:flutter/material.dart';

class LastLeaksContainer extends StatelessWidget {
  const LastLeaksContainer({super.key, required this.leakList});

  final List<Leak> leakList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Последние утечки данных',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
          ),
          const SizedBox(height: 24),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: leakList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [_LeakContainer(leak: leakList[index]), const SizedBox(height: 16)],
                );
              }),
        ],
      ),
    );
  }
}

class _LeakContainer extends StatelessWidget {
  const _LeakContainer({required this.leak});

  final Leak leak;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(leak.assetImage),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(leak.title,
                style:
                    const TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 20)),
            const SizedBox(height: 4),
            Text(leak.description,
                style:
                    const TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w400, fontSize: 18)),
          ],
        )
      ],
    );
  }
}

class Leak {
  final String assetImage;
  final String title;
  final String description;

  Leak({required this.assetImage, required this.title, required this.description});
}
