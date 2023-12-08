import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/module.dart';

class DrawerListTileMobile extends ConsumerWidget {
  const DrawerListTileMobile({super.key, required this.title, required this.index, required this.icon});

  final String title;
  final int index;
  final Icon icon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController controller = ref.read(pageControllerProvider) as PageController;
    final selectedPage = ref.watch(selectedPageProvider);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: selectedPage == index ? const Color.fromRGBO(231, 231, 255, 1) : Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
          onPressed: () {
            ref.read(selectedPageProvider.notifier).state = index;
            controller.jumpToPage(index);
          },
          child: Row(
            children: [
              icon,
              const SizedBox(width: 5),
              Text(title,
                  style: theme.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.w500, color: const Color.fromRGBO(26, 26, 26, 1), fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
