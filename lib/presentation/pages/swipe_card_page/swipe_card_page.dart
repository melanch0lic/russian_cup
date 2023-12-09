import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class SwipeCardPage extends StatelessWidget {
  const SwipeCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TinderCardDemo();
  }
}

class TinderCardDemo extends StatefulWidget {
  const TinderCardDemo({super.key});

  @override
  _TinderCardDemoState createState() => _TinderCardDemoState();
}

class _TinderCardDemoState extends State<TinderCardDemo> {
  List<String> demoData = [
    "Ваш друг со своего аккаунта в социальных сетях просит вас скинуть ваши личные данные, ваше действие?",
    "Вам поступил звонок с незнакомого номера, на том конце представились вашим дальним родственником и сообщили, что попали в беду, а также попросили скинуть деньги на этот номер, ваше действие?",
    "Вы хотите оплатить покупку в популярном интернет магазине, сервис через который предлагается внести оплату прошел аудит PCI DSS и имеет отличные отзывы, ваши действия?",
  ];
  int currentIndex = 0;

  void handleSwipe(bool isLiked) {
    if (isLiked) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Одобрено"),
          duration: Duration(milliseconds: 500),
        ),
      );
    }

    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: Container(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          margin: const EdgeInsets.only(bottom: 24),
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(246, 247, 249, 1), borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserInfoExitWidget(),
              const SizedBox(height: 36),
              Container(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Практика',
                        style:
                            TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32),
                      ),
                      const SizedBox(height: 36),
                      currentIndex != demoData.length
                          ? TinderSwapCard(
                              key: UniqueKey(), // Use UniqueKey to force rebuild when currentIndex changes
                              data: demoData[currentIndex],
                              onSwipe: handleSwipe,
                            )
                          : const Center(
                              child: Text(
                                "Вы успешно защитились от всех угроз!",
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32),
                              ),
                            )
                    ],
                  )),
            ],
          ),
        ));
  }
}

class TinderSwapCard extends StatefulWidget {
  final String data;
  final Function(bool isLiked) onSwipe;

  const TinderSwapCard({Key? key, required this.data, required this.onSwipe}) : super(key: key);

  @override
  _TinderSwapCardState createState() => _TinderSwapCardState();
}

class _TinderSwapCardState extends State<TinderSwapCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Draggable(
          feedback: Card(
            color: const Color.fromRGBO(246, 247, 250, 1),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
                width: 600,
                height: 400,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    widget.data,
                    style: const TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                  ),
                )),
          ),
          childWhenDragging: Container(),
          onDragEnd: (dragDetails) {
            // Add your logic here for handling card swipe actions
            if (dragDetails.velocity != 0) {
              widget.onSwipe(true); // Swiped right (liked)
            } else {
              widget.onSwipe(false); // Swiped left (disliked)
            }
          },
          child: Card(
            color: const Color.fromRGBO(246, 247, 250, 1),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
                width: 600,
                height: 400,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    widget.data,
                    style: const TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                  ),
                )),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: TextButton(
            child: const Text(
              'Не доверять',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700, fontSize: 24),
            ),
            onPressed: () {
              widget.onSwipe(false); // Dislike button pressed
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: TextButton(
            child: const Text(
              'Доверять!',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700, fontSize: 24),
            ),
            onPressed: () {
              widget.onSwipe(true); // Like button pressed
            },
          ),
        ),
      ],
    );
  }
}
