import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'question.g.dart';

@JsonSerializable()
class Question {
  @JsonKey(name: 'material-id')
  final int id;
  @JsonKey(name: 'question-type')
  final String questionType;
  @JsonKey(name: 'quest-text')
  final String questionText;
  @JsonKey(name: 'src-url')
  final String? imgUrl;
  final List<Answer> answer;

  Question(
      {required this.id,
      required this.questionType,
      required this.questionText,
      this.imgUrl,
      required this.answer});

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
