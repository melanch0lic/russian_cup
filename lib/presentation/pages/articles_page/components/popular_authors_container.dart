import 'package:flutter/material.dart';

class PopularAuthorsContainer extends StatelessWidget {
  const PopularAuthorsContainer({super.key, required this.authorList});

  final List<Author> authorList;

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
            'Популярные авторы',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 24),
          ),
          const SizedBox(height: 24),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: authorList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [_AuthorContainer(author: authorList[index]), const SizedBox(height: 16)],
                );
              }),
        ],
      ),
    );
  }
}

class _AuthorContainer extends StatelessWidget {
  const _AuthorContainer({required this.author});

  final Author author;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(author.assetImage),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author.name,
                style:
                    const TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w600, fontSize: 20)),
            const SizedBox(height: 4),
            Text(author.countArticles,
                style:
                    const TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w400, fontSize: 18)),
          ],
        )
      ],
    );
  }
}

class Author {
  final String assetImage;
  final String name;
  final String countArticles;

  Author({required this.assetImage, required this.name, required this.countArticles});
}
