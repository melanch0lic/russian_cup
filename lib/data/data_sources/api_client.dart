import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/responses/questions_counry_response.dart';

final Provider apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient();
});

class ApiClient {
  Future<QuestionsCountryResponse> getQuestions() async {
    await Future.delayed(const Duration(seconds: 2));
    return QuestionsCountryResponse.fromJson({
      'result': [
        {
          'id': 1,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'image_src': 'assets/icons/FR.svg',
          'correct_name': 'Франция',
        },
        {
          'id': 2,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'image_src': 'assets/icons/GR.svg',
          'correct_name': 'Германия',
        },
        {
          'id': 3,
          'name': ['Италия', 'Германия', 'Испания', 'Франция'],
          'image_src': 'assets/icons/IT.svg',
          'correct_name': 'Италия',
        }
      ],
      'error': null,
    });
  }
}
