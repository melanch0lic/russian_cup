import 'package:json_annotation/json_annotation.dart';

part 'answer.g.dart';

@JsonSerializable()
class Answer {
  final int id;
  @JsonKey(name: 'right')
  final bool isRight;
  @JsonKey(name: 'answer-text')
  final String text;
  @JsonKey(name: 'question-id')
  final int questionId;
  @JsonKey(name: 'src-url')
  final String? imgUrl;

  Answer(
      {required this.id,
      required this.isRight,
      required this.text,
      required this.questionId,
      this.imgUrl});

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
