import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/domain/repository/courses_repository.dart';

import 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  final CoursesRepository _coursesRepository;

  CoursesCubit(this._coursesRepository) : super(const CoursesState()) {
    getCourses();
  }

  void setSelectedMode(CourseSelectedMode mode) {
    emit(state.copyWith(selectedMode: mode));
  }

  void getCourses() async {
    emit(state.copyWith(isLoading: true));
    try {
      final courses = await _coursesRepository.getCourses();
      emit(state.copyWith(
        isLoading: false,
        courses: courses,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      ));
    }
  }

  void onCourseSelected(int id) async {
    emit(state.copyWith(isLoading: true));
    try {
      final course = await _coursesRepository.getFullCourseInfo(id);
      emit(state.copyWith(
        isLoading: false,
        selectedCourse: course,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      ));
    }
    setPageMode(PageMode.detail);
  }

  void setPageMode(PageMode mode) {
    if (mode == PageMode.study) {
      emit(state.copyWith(pageMode: mode));
      return;
    }
    emit(state.copyWith(pageMode: mode, selectedCourse: null));
  }
}
