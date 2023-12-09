import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/articles_page/components/all_articles_container.dart';
import 'package:russia_icpc/presentation/pages/articles_page/components/popular_authors_container.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authorList = [
      Author(
        assetImage: 'assets/images/alex.jpeg',
        name: 'Alex Oxlaid Chamberlain',
        countArticles: '2 статьи',
      ),
      Author(
        assetImage: 'assets/images/harry.jpg',
        name: 'Harry Maguire',
        countArticles: '127 статей',
      ),
      Author(
        assetImage: 'assets/images/bully.jpg',
        name: 'Bully Maguire',
        countArticles: '77 статей',
      ),
      Author(
        assetImage: 'assets/images/pavel.jpg',
        name: 'Pavel Durov',
        countArticles: '1336 статей',
      ),
    ];
    final articlesList = [
      Article(
          assetImage: 'assets/images/article_1.png',
          title: 'Как работает хэширование',
          description:
              'Хэш-функции применяются в базах данных для оптимизации запросов, в структурах данных для ускорения работы, в безопасности для защиты данных. Почти каждое взаимодействие с технологией включает в себя хэш-функции.',
          date: '12.09.2023'),
      Article(
          assetImage: 'assets/images/article_2.png',
          title: 'Манифест информационной безопасности',
          description:
              'Когда в какой-либо индустрии происходит технологический скачок, мы быстро к этому привыкаем и уже с удивлением и легким ужасом вспоминаем “как оно было раньше”.',
          date: '07.05.2023'),
      Article(
          assetImage: 'assets/images/article_3.png',
          title: 'Что такое браузерный сэндбоксинг?',
          description:
              'В стремительно меняющихся условиях современного цикла веб-разработки одним из самых серьёзных вопросов для разработчиков и тестеров становится безопасность. Сложность создания и развёртывания современных...',
          date: '08.08.2023'),
      Article(
          assetImage: 'assets/images/article_4.png',
          title: 'Как бороться с киберпреступлениями, извлекая при этом неплохую прибыль',
          description: 'Зло «борется» со злом или как одни преступники делают вид, что борются с другими.',
          date: '07.05.2023'),
      Article(
          assetImage: 'assets/images/article_5.png',
          title: 'Испытание по криминалистической экспертизе дампа .NET',
          description:
              'Это испытание с MetaCTF CyberGames 2021, в рамках которого нужно было выполнить криминалистическую экспертизу дампа памяти .NET.',
          date: '12.05.2023')
    ];
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const UserInfoExitWidget(),
                  const SizedBox(height: 36),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 2, child: AllArticlesContainer(articlesList: articlesList)),
                      const SizedBox(width: 24),
                      Expanded(child: PopularAuthorsContainer(authorList: authorList))
                    ],
                  )
                ]))));
  }
}
