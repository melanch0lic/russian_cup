import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tabs_state.dart';

class TabsCubit extends Cubit<TabsState> {
  late final PageController controller;

  TabsCubit() : super(const TabsState()) {
    controller = PageController();
  }

  void changeIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
    controller.jumpToPage(index);
  }
}
