// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['id'] as int,
      age: json['age'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      urlImage: json['urlImage'] as String,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'name': instance.name,
      'description': instance.description,
      'urlImage': instance.urlImage,
    };
