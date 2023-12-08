import 'package:json_annotation/json_annotation.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  final int id;
  final int age;
  final String name;
  final String description;
  final String urlImage;

  Course({required this.id, required this.age, required this.name, required this.description, required this.urlImage});

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
