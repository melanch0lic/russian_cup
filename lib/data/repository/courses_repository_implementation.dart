import 'package:russia_icpc/data/models/course.dart';
import 'package:russia_icpc/data/models/course_detail.dart';
import 'package:russia_icpc/data/models/responses/course_detail_response.dart';
import 'package:russia_icpc/data/models/responses/courses_response.dart';

import '../../domain/repository/courses_repository.dart';

class CoursesRepositoryImplementation implements CoursesRepository {
  @override
  Future<List<Course>> getCourses() async {
    try {
      await Future.delayed(Duration(milliseconds: 400));
      final List<Course> courses = CoursesResponse.fromJson({
        'result': [
          {
            "course-id": 1,
            "description":
                "В эпоху глобальной информатизации надежная и эффективная инфраструктура финансового рынка (ИФР) Российской Федерации играет важную роль в финансовой системе и экономике",
            "course-difficulty": 1,
            "url": "3",
            "name": "c1",
            "progress": 3
          },
          {
            "course-id": 2,
            "description":
                "Границы между понятием «информация» и реальным человеком носителем этой информации стираются. Информация о человеке, его персональные данные сегодня превратились",
            "course-difficulty": 2,
            "url": "3",
            "name": "c2",
            "progress": 5
          },
          {
            "course-id": 3,
            "description":
                "Важно помнить, что получение финансовой прибыли — это главная цель киберпреступников. И для достижения этой цели злоумышленники задействуют множество методов, при помощи",
            "course-difficulty": 3,
            "url": "3",
            "name": "c3",
            "progress": 5
          }
        ],
        'error': {'code': 200}
      }).result;
      return courses;
    } catch (e) {
      throw Exception(e);
    }
    return [];
  }

  @override
  Future<CourseDetail> getFullCourseInfo(int id) async {
    try {
      await Future.delayed(Duration(milliseconds: 400));
      // CourseDetail courseDetail = CourseDetailResponse.fromJson({
      //   'error': {"code": 200},
      //   'result': {
      //     "description": "1",
      //     "course-difficulty": 2,
      //     "url": "3",
      //     "name": "4",
      //     "progress": 0,
      //     "lessons": [
      //       {
      //         "lesson-id": 1,
      //         "lesson-type-id": 1,
      //         "course-id": 1,
      //         "course-name": "",
      //         "value": 4,
      //         "name": "m1",
      //         "passed": false,
      //         "material": {"material-id": 1, "name": null, "lesson-text": "mm1"}
      //       },
      //       {
      //         "lesson-id": 2,
      //         "lesson-type-id": 2,
      //         "course-id": 1,
      //         "course-name": "",
      //         "value": 0,
      //         "name": "l1",
      //         "passed": false,
      //         "question": {
      //           "material-id": 1,
      //           "question-type": "test",
      //           "question-type-id": "1",
      //           "quest-text": "?",
      //           "src-url": "1",
      //           "answer": [
      //             {
      //               "answer-id": 1,
      //               "right": false,
      //               "answer-text": "--",
      //               "question-id": 1,
      //               "src-url": ""
      //             },
      //             {
      //               "answer-id": 2,
      //               "right": true,
      //               "answer-text": "+",
      //               "question-id": 1,
      //               "src-url": ""
      //             },
      //             {
      //               "answer-id": 3,
      //               "right": false,
      //               "answer-text": "=",
      //               "question-id": 1,
      //               "src-url": ""
      //             },
      //             {
      //               "answer-id": 4,
      //               "right": false,
      //               "answer-text": "/",
      //               "question-id": 1,
      //               "src-url": "photo ans"
      //             }
      //           ]
      //         }
      //       },
      //       {
      //         "lesson-id": 3,
      //         "lesson-type-id": 1,
      //         "course-id": 1,
      //         "course-name": "",
      //         "value": 12,
      //         "name": "m2",
      //         "passed": false,
      //         "material": {"material-id": 2, "name": null, "lesson-text": "mm3"}
      //       },
      //       {
      //         "lesson-id": 4,
      //         "lesson-type-id": 2,
      //         "course-id": 1,
      //         "course-name": "",
      //         "value": 13,
      //         "name": "l2",
      //         "passed": false,
      //         "question": {
      //           "material-id": 3,
      //           "question-type": "test",
      //           "question-type-id": "1",
      //           "quest-text": "?",
      //           "src-url": "123",
      //           "answer": [
      //             {
      //               "answer-id": 7,
      //               "right": true,
      //               "answer-text": "иволга",
      //               "question-id": 3,
      //               "src-url": ""
      //             }
      //           ]
      //         }
      //       }
      //     ]
      //   }
      // }).result;
      CourseDetail courseDetail = CourseDetail(
        name: 'Основы кибербезопасности: организация и правовое регулирование',
        description:
            "Курс 'Основы кибербезопасности: организация и правовое регулирование' поможет узнать о том как организована государственная система обнаружения, предупреждения и ликвидации последствий компьютерных атак на информационные ресурсы Российской Федерации, какова ее структура и задачи. Курс создан с опорой на обширный перечень нормативно правовых актов регламентирующих эту сферу. Здесь затронуты вопросы международного сотрудничества и международной стандартизации сферы обеспечения кибербезопасности",
        progress: 3,
        url: '3',
        diffuculty: 1,
        lessons: [],
      );
      return courseDetail;
    } catch (e) {
      throw Exception(e);
    }
  }
}
