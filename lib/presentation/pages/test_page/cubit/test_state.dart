import 'package:equatable/equatable.dart';
import 'package:russia_icpc/data/models/question.dart';

enum TestPageMode { initial, test, result }

final class TestState extends Equatable {
  const TestState({
    this.questions = const [],
    this.isLoading = false,
    this.currentPageMode = TestPageMode.initial,
  });

  final List<Question> questions;
  final bool isLoading;
  final TestPageMode currentPageMode;

  @override
  List<Object?> get props => [questions, isLoading, currentPageMode];

  TestState copyWith(
      {List<Question>? questions,
      TestPageMode? currentPageMode,
      bool? isLoading}) {
    return TestState(
        questions: questions ?? this.questions,
        currentPageMode: currentPageMode ?? this.currentPageMode,
        isLoading: isLoading ?? this.isLoading);
  }
}
