import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/courses_page/components/all_courses_container.dart';
import 'package:russia_icpc/presentation/pages/news_page/components/all_news_container.dart';
import 'package:russia_icpc/presentation/pages/news_page/components/last_leaks_container.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final leakList = [
      Leak(
        assetImage: 'assets/images/del.png',
        title: 'Delivery Club',
        description: '2.2 млн заказов',
      ),
      Leak(
        assetImage: 'assets/images/geek.png',
        title: 'Geek Brains',
        description: '>200 тысяч пользователей',
      ),
      Leak(
        assetImage: 'assets/images/kari.png',
        title: 'Kari',
        description: '>1 млн учётных записей',
      ),
      Leak(
        assetImage: 'assets/images/pikabu.png',
        title: 'Pikabu',
        description: '>1 млн учётных записей',
      ),
      Leak(
        assetImage: 'assets/images/metro.png',
        title: 'Метрополис',
        description: '87 тысяч клиентов',
      ),
      Leak(
        assetImage: 'assets/images/pochta.png',
        title: 'Почта России',
        description: 'Сведения о 10 млн посылок',
      ),
      Leak(
        assetImage: 'assets/images/ria_news.png',
        title: 'РИА «Новости»',
        description: '665.6 тысячи аккаунтов',
      ),
      Leak(
        assetImage: 'assets/images/tele_2.png',
        title: 'TELE2',
        description: '>7 млн номеров',
      ),
      Leak(
        assetImage: 'assets/images/tutu.png',
        title: 'Туту.ру',
        description: '2,6 млн заказов, 2,29 млн номеров',
      ),
      Leak(
        assetImage: 'assets/images/yandex_eat.png',
        title: 'Яндекс.Еда',
        description: '50 млн заказов, 6,9 млн номеров',
      ),
    ];
    final newsList = [
      News(
          assetImage: 'assets/images/news_1.png',
          title: 'В сеть утекли данные более миллиона пользователей МТС-банка',
          description:
              'Эксперты предположили, что утечка могла затронуть данные других частей экосистемы МТС. В банке считают возможной утечку этих данныху ретейлера или цифрового сервиса.',
          date: '08.09.2023'),
      News(
          assetImage: 'assets/images/news_2.png',
          title: 'Хакеры могли взломать ретейлеров из-за нежелания обновлять ПО для устранения багов',
          description:
              'Данные клиентов торговых сетей «Ашан», «Твой дом» и Gloria Jeans могли утечьв сеть из-за уязвимости CMS «1C-Битрикс», выяснил «Коммерсантъ». ',
          date: '27.08.2023'),
      News(
          assetImage: 'assets/images/news_3.png',
          title: 'Ущерб для россиян от действий кибермошенников снизился, сообщил ЦБ',
          description:
              'Ущерб для граждан России от действий кибермошенников в третьем квартале снизился к среднему значению за предыдущие четыре квартала, при этом российские банки за этот период отразили 10,8 миллиона атак.',
          date: '14.08.2023'),
      News(
          assetImage: 'assets/images/news_4.png',
          title: 'Apple ответила на обвинения ФСБ России в соучастии во взломе iPhone для слежки',
          description:
              'Apple в ответ на обвинения со стороны ФСБ России в помощи АНБ в слежкеза пользователями iPhone заявила, что не сотрудничает в этом направлении«с каким-либо правительством».',
          date: '02.07.2023'),
      News(
          assetImage: 'assets/images/news_5.png',
          title: 'Количество утечек данных в крупных компаниях вырослов 1,5 раза',
          description:
              'За первые четыре месяца 2023 г. произошло 75 утечек из российских коммерческих компаний и госорганизаций. Это в 1,5 раза больше по сравнению с аналогичным периодом прошлого года, когда было зафиксировано 49 утечек.',
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
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(flex: 2, child: AllNewsContainer(newsList: newsList)),
                    const SizedBox(width: 24),
                    Expanded(child: LastLeaksContainer(leakList: leakList))
                  ])
                ]))));
  }
}
