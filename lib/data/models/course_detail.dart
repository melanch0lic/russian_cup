import 'package:json_annotation/json_annotation.dart';
import 'package:russia_icpc/data/models/lesson.dart';

part 'course_detail.g.dart';

@JsonSerializable()
class CourseDetail {
  final String name;
  final String description;
  final int progress;
  final String url;
  @JsonKey(name: 'course-difficulty')
  final int diffuculty;
  final List<Lesson> lessons;

  CourseDetail(
      {required this.name,
      required this.description,
      required this.progress,
      required this.url,
      required this.diffuculty,
      required this.lessons});

  factory CourseDetail.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailFromJson(json);
}
