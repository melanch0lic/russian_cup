// import '../../domain/repository/questions_repository.dart';
// import '../models/responses/test_questions_response.dart';
// import '../models/test_questions.dart';

// class QuestionsRepositoryImplementation extends QuestionsRepository {
//   @override
//   Future<List<TestQuestion>> getQuestions() async {
//     try {
//       await Future.delayed(Duration(milliseconds: 400));
//       final List<TestQuestion> questions = TestQuestionResponse.fromJson({
//         'result': [],
//         'error': {'code': 200}
//       });
//       return questions;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
// }
