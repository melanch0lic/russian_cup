// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_counry_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsCountryResponse _$QuestionsCountryResponseFromJson(
        Map<String, dynamic> json) =>
    QuestionsCountryResponse(
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      result: (json['result'] as List<dynamic>)
          .map((e) => QuestionCountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionsCountryResponseToJson(
        QuestionsCountryResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'result': instance.result,
    };
