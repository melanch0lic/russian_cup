// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: json['course-id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      difficulty: json['course-difficulty'] as int,
      progress: json['progress'] as int,
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'course-id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'course-difficulty': instance.difficulty,
      'progress': instance.progress,
    };
