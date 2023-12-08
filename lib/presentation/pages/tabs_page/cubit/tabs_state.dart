import 'package:equatable/equatable.dart';

final class TabsState extends Equatable {
  const TabsState({this.selectedIndex = 0});

  final int selectedIndex;

  @override
  List<Object?> get props => [selectedIndex];

  TabsState copyWith({int? selectedIndex}) {
    return TabsState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}
