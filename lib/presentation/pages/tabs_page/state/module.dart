import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider pageControllerProvider = Provider<PageController>((ref) {
  return PageController(initialPage: 0);
});

final StateProvider selectedPageProvider = StateProvider((ref) => 0);
