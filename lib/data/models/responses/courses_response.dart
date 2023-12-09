import 'package:json_annotation/json_annotation.dart';
import 'package:russia_icpc/data/models/course.dart';

import '../error.dart';

part 'courses_response.g.dart';

@JsonSerializable()
class CoursesResponse {
  final List<Course> result;
  final ErrorModel error;

  CoursesResponse({required this.result, required this.error});

  factory CoursesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoursesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoursesResponseToJson(this);
}
