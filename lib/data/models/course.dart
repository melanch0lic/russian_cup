import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  @JsonKey(name: 'course-id')
  final int id;
  final String name;
  final String description;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'course-difficulty')
  final int difficulty;
  final int progress;

  Course(
      {required this.id,
      required this.name,
      required this.description,
      required this.url,
      required this.difficulty,
      required this.progress});

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
