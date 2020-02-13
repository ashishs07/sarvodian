import 'package:flutter/material.dart';

import 'package:sarvodian/models/question_model.dart';

class QuestionProvider with ChangeNotifier {
  List<QuestionModel> _questions = [
    QuestionModel(question: 'Hello', email: 'ass@ass.sad'),
  ];

  List<QuestionModel> get questions {
    return [..._questions];
  }

  void addQuestion(QuestionModel question) {
    _questions.add(question);
    notifyListeners();
  }
}
