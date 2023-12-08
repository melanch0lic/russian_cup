import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                minRadius: 64,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
            const Text('Заур Кудзаев',
                style: TextStyle(
                    color: Color.fromRGBO(26, 29, 31, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            const Text('Ученик',
                style: TextStyle(
                    color: Color.fromRGBO(107, 78, 255, 1), fontSize: 18)),
            const SizedBox(height: 32),
            const Spacer(),
            SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: 2, color: Color.fromRGBO(107, 78, 255, 1)),
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromRGBO(107, 78, 255, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 0,
                ),
                child: Center(
                    child: Row(
                  children: [
                    const Icon(Icons.logout,
                        color: Color.fromRGBO(107, 78, 255, 1)),
                    const SizedBox(width: 8),
                    Text(
                      'Выйти',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(107, 78, 255, 1)),
                    ),
                  ],
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 32, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
