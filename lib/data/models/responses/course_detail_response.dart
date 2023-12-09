import 'package:json_annotation/json_annotation.dart';

import '../course_detail.dart';
import '../error.dart';

part 'course_detail_response.g.dart';

@JsonSerializable()
class CourseDetailResponse {
  final CourseDetail result;
  final ErrorModel error;

  CourseDetailResponse({required this.result, required this.error});

  factory CourseDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailResponseToJson(this);
}
