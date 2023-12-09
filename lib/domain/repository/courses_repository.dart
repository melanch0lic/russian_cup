import 'package:russia_icpc/data/models/course.dart';
import 'package:russia_icpc/data/models/course_detail.dart';

abstract class CoursesRepository {
  Future<List<Course>> getCourses();
  Future<CourseDetail> getFullCourseInfo(int id);
}
