import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/answer.dart';
import '../../../../data/models/question.dart';
import 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(const TestState()) {
    emit(state.copyWith(questions: [
      Question(
          id: 1,
          questionType: 'single',
          questionText:
              'Какая мера обеспечивает безопасность персональных данных?',
          answer: [
            Answer(
                id: 0,
                isRight: false,
                text: 'Публичное разглашение данных.',
                questionId: 0),
            Answer(
                id: 1,
                isRight: true,
                text: 'Регулярное обучение сотрудников по безопасности данных.',
                questionId: 0),
            Answer(
                id: 2,
                isRight: false,
                text: 'Использование простых паролей.',
                questionId: 0),
          ])
    ]));
  }

  void setPageMode(TestPageMode mode) {
    emit(state.copyWith(currentPageMode: mode));
  }
}
