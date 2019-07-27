import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/models/question_model.dart';
import 'package:sarvodian/models/user_model.dart';

mixin ConnectedQuestions on Model {
  List<QuestionModel> _questions = [];
  int _selQuestionIndex;
  UserModel _authenticatedUser;

  void addQuestion(que) {
    final QuestionModel question = QuestionModel(
      question: que,
      answer: '',
      email: _authenticatedUser.email,
    );
    _questions.add(question);
    notifyListeners();
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
    _questions[selectedQuestionIndex] = que;
    notifyListeners();
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
