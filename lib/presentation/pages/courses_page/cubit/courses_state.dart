import 'package:equatable/equatable.dart';

import '../../../../data/models/course.dart';

enum PageMode { all, detail }

enum CourseSelectedMode { all, process }

final class CoursesState extends Equatable {
  const CoursesState({
    this.selectedMode = CourseSelectedMode.all,
    this.courses = const [],
    this.isLoading = false,
    this.pageMode = PageMode.all,
    this.errorMessage,
  });

  final bool isLoading;
  final List<Course> courses;
  final CourseSelectedMode selectedMode;
  final String? errorMessage;
  final PageMode pageMode;

  @override
  List<Object?> get props => [
        selectedMode,
        courses,
        isLoading,
        pageMode,
        errorMessage,
      ];

  CoursesState copyWith({
    CourseSelectedMode? selectedMode,
    List<Course>? courses,
    bool? isLoading,
    PageMode? pageMode,
    String? errorMessage,
  }) {
    return CoursesState(
      selectedMode: selectedMode ?? this.selectedMode,
      courses: courses ?? this.courses,
      isLoading: isLoading ?? this.isLoading,
      pageMode: pageMode ?? this.pageMode,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
