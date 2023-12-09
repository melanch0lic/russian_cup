import 'package:equatable/equatable.dart';
import 'package:russia_icpc/data/models/course_detail.dart';

import '../../../../data/models/course.dart';
import '../../../../data/models/question.dart';

enum PageMode { all, detail, study }

enum CourseSelectedMode { all, process }

final class CoursesState extends Equatable {
  const CoursesState({
    this.selectedMode = CourseSelectedMode.all,
    this.selectedCourse,
    this.selectedQuestionIndex = 0,
    this.courses = const [],
    this.isLoading = false,
    this.pageMode = PageMode.all,
    this.errorMessage,
  });

  final bool isLoading;
  final List<Course> courses;
  final CourseDetail? selectedCourse;
  final CourseSelectedMode selectedMode;
  final int selectedQuestionIndex;
  final String? errorMessage;
  final PageMode pageMode;

  @override
  List<Object?> get props => [
        selectedMode,
        courses,
        isLoading,
        pageMode,
        selectedCourse,
        selectedQuestionIndex,
        errorMessage,
      ];

  CoursesState copyWith({
    CourseSelectedMode? selectedMode,
    List<Course>? courses,
    bool? isLoading,
    PageMode? pageMode,
    CourseDetail? selectedCourse,
    int? selectedQuestionIndex,
    String? errorMessage,
  }) {
    return CoursesState(
      selectedMode: selectedMode ?? this.selectedMode,
      courses: courses ?? this.courses,
      isLoading: isLoading ?? this.isLoading,
      pageMode: pageMode ?? this.pageMode,
      selectedCourse: selectedCourse ?? this.selectedCourse,
      selectedQuestionIndex:
          selectedQuestionIndex ?? this.selectedQuestionIndex,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
