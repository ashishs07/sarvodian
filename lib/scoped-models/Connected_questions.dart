import 'dart:convert';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

import 'package:sarvodian/models/question_model.dart';
import 'package:sarvodian/models/user_model.dart';

mixin ConnectedQuestions on Model {
  List<QuestionModel> _questions = [];
  int _selQuestionIndex;
  UserModel _authenticatedUser;

  void addQuestion(que) {
    final Map<String, dynamic> questionData = {
      'question': que,
      'answer': '',
      'email': _authenticatedUser.email,
    };

    http
        .post('https://sarvodian.firebaseio.com/questions.json',
            body: json.encode(questionData))
        .then((http.Response response) {
      final Map<String, dynamic> responseData = json.decode(response.body);

      final QuestionModel question = QuestionModel(
        id: responseData['name'],
        question: que,
        answer: '',
        email: _authenticatedUser.email,
      );
      _questions.add(question);
      notifyListeners();
    });
  }
}

mixin QuestionSModel on ConnectedQuestions {
  List<QuestionModel> get allQuestion {
    return List.from(_questions);
  }

  int get selectedQuestionIndex {
    return _selQuestionIndex;
  }

  QuestionModel get selectedProduct {
    if (selectedQuestionIndex == null) {
      return null;
    }
    return _questions[selectedQuestionIndex];
  }

  void updateQuestion(que) {
    http.patch('https://sarvodian.firebaseio.com/questions.json');
    _questions[selectedQuestionIndex] = que;
    notifyListeners();
  }

  void fetchQuestions() {
    http
        .get('https://sarvodian.firebaseio.com/questions.json')
        .then((http.Response response) {
      final List<QuestionModel> fetchedQuestionList = [];
      final Map<String, dynamic> questionListData = json.decode(response.body);

      questionListData.forEach((String questionId, dynamic questionData) {
        final QuestionModel product = QuestionModel(
          id: questionId,
          question: questionData['question'],
          answer: questionData['answer'],
          email: questionData['email'],
        );

        fetchedQuestionList.add(product);
      });
      _questions = fetchedQuestionList;
      notifyListeners();
    });
  }

  void selectQuestion(int index) {
    _selQuestionIndex = index;
    if (index != null) {
      notifyListeners();
    }
  }
}

mixin UserSModel on ConnectedQuestions {
  void login(String email, String password) {
    _authenticatedUser =
        UserModel(id: 'sbsdbcd', email: email, password: password);
  }
}
