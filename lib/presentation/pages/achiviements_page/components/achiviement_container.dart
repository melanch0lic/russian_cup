import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AchiviementContainer extends StatelessWidget {
  const AchiviementContainer({super.key, required this.achievementList});
  final List<Achievement> achievementList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Достижения',
            style: TextStyle(
                color: Color.fromRGBO(29, 31, 36, 1),
                fontWeight: FontWeight.w700,
                fontSize: 32),
          ),
          const SizedBox(height: 24),
          GridView.builder(
            itemCount: achievementList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 240,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              childAspectRatio: 1,
            ),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return _AchivCard(
                achievement: achievementList[index],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _AchivCard extends StatelessWidget {
  const _AchivCard({super.key, required this.achievement});
  final Achievement achievement;
  @override
  Widget build(BuildContext context) {
    return achievement.isCompleted
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 247, 250, 0.5),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/achiv_loos.png'),
                  Text(
                    achievement.name.toString(),
                    maxLines: 2,
                    style: const TextStyle(
                        color: Color.fromRGBO(29, 31, 36, 0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(achievement.countPoints.toString(),
                          style: const TextStyle(
                              color: Color.fromRGBO(29, 31, 36, 0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(width: 8),
                      Opacity(
                          opacity: 0.5,
                          child: SvgPicture.asset('assets/svg_icons/light.svg',
                              height: 24, width: 24)),
                    ],
                  )
                ]),
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 247, 250, 1),
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/achiv_win.png'),
                  Text(
                    achievement.name.toString(),
                    style: const TextStyle(
                        color: Color.fromRGBO(29, 31, 36, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(achievement.countPoints.toString(),
                          style: const TextStyle(
                              color: Color.fromRGBO(29, 31, 36, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/svg_icons/light.svg',
                          height: 24, width: 24),
                    ],
                  )
                ]),
          );
  }
}

class Achievement {
  final bool isCompleted;
  final String name;
  final int countPoints;

  Achievement(
      {required this.isCompleted,
      required this.name,
      required this.countPoints});
}
