import 'package:json_annotation/json_annotation.dart';

import '../error.dart';
import '../question_country_model.dart';
part 'questions_counry_response.g.dart';

@JsonSerializable()
class QuestionsCountryResponse {
  final ErrorModel? error;
  final List<QuestionCountryModel> result;
  QuestionsCountryResponse({
    required this.error,
    required this.result,
  });

  factory QuestionsCountryResponse.fromJson(Map<String, dynamic> json) => _$QuestionsCountryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionsCountryResponseToJson(this);
}
