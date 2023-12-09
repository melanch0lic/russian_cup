import 'package:flutter/material.dart';

class AllArticlesContainer extends StatelessWidget {
  const AllArticlesContainer({super.key, required this.articlesList});
  final List<Article> articlesList;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
          const Text(
            'Статьи',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32),
          ),
          const SizedBox(height: 24),
          const Row(
            children: [
              Text('Все статьи',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Руководства',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Ликбез',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
              SizedBox(width: 24),
              Text('Истории',
                  style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 16)),
            ],
          ),
          const SizedBox(height: 24),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: articlesList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [_ArticleContainer(article: articlesList[index]), const SizedBox(height: 16)],
                );
              }),
        ]));
  }
}

class _ArticleContainer extends StatelessWidget {
  const _ArticleContainer({super.key, required this.article});
  final Article article;
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
                image: AssetImage(article.assetImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 31, 36, 1),
                    )),
                const SizedBox(height: 12),
                Text(
                  article.description,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                ),
                const SizedBox(height: 12),
                Text(article.date,
                    style: const TextStyle(
                        color: Color.fromRGBO(163, 165, 171, 1), fontSize: 14, fontWeight: FontWeight.w600))
              ],
            ),
          )
        ]));
  }
}

class Article {
  final String assetImage;
  final String title;
  final String description;
  final String date;

  Article({required this.assetImage, required this.title, required this.description, required this.date});
}
