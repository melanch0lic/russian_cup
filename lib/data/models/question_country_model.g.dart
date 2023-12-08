// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionCountryModel _$QuestionCountryModelFromJson(
        Map<String, dynamic> json) =>
    QuestionCountryModel(
      id: json['id'] as int,
      name: (json['name'] as List<dynamic>).map((e) => e as String).toList(),
      imageUrl: json['image_src'] as String,
      correctName: json['correct_name'] as String,
    );

Map<String, dynamic> _$QuestionCountryModelToJson(
        QuestionCountryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_src': instance.imageUrl,
      'correct_name': instance.correctName,
    };
