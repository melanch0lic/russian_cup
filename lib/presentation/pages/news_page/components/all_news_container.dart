import 'package:flutter/material.dart';

class AllNewsContainer extends StatelessWidget {
  const AllNewsContainer({super.key, required this.newsList});
  final List<News> newsList;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
          const Text(
            'Новости кибербезопасности',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32),
          ),
          const SizedBox(height: 24),
          const Row(
            children: [
              Text('Все новости',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Технологии',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Открытия',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Утечки',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
            ],
          ),
          const SizedBox(height: 24),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [_NewsContainer(news: newsList[index]), const SizedBox(height: 16)],
                );
              }),
        ]));
  }
}

class _NewsContainer extends StatelessWidget {
  const _NewsContainer({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(246, 247, 250, 1), borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(news.assetImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 31, 36, 1),
                    )),
                const SizedBox(height: 12),
                Text(
                  news.description,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                ),
                const SizedBox(height: 12),
                Text(news.date,
                    style: const TextStyle(
                        color: Color.fromRGBO(163, 165, 171, 1), fontSize: 14, fontWeight: FontWeight.w600))
              ],
            ),
          )
        ]));
  }
}

class News {
  final String assetImage;
  final String title;
  final String description;
  final String date;

  News({required this.assetImage, required this.title, required this.description, required this.date});
}
