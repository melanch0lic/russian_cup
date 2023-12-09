import 'package:json_annotation/json_annotation.dart';

import 'material.dart';
import 'question.dart';

part 'lesson.g.dart';

@JsonSerializable()
class Lesson {
  @JsonKey(name: 'lesson-id')
  final int id;
  @JsonKey(name: 'lesson-type-id')
  final int typeId;
  @JsonKey(name: 'course-id')
  final int courseId;
  @JsonKey(name: 'course-name')
  final String courseName;
  final int value;
  final String name;
  @JsonKey(name: 'passed')
  final bool isPassed;
  final Question? question;
  final Material? material;

  Lesson({
    required this.id,
    required this.typeId,
    required this.courseId,
    required this.courseName,
    required this.value,
    required this.name,
    required this.isPassed,
    this.question,
    this.material,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
