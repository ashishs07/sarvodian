import 'package:scoped_model/scoped_model.dart';

import '../models/question_model.dart';
import '../models/user_model.dart';

mixin ConnectedQuestions on Model {
  List<QuestionModel> _questions = [];
  int _selQuestionIndex;
  UserModel _authenticatedUser;

  void addProduct(question) {
    _questions.add(question);
  }
}

mixin QuestionSModel on ConnectedQuestions {
  List<QuestionModel> get allQuestion {
    return List.from(_questions);
  }

  int get selectedQuestionIndex {
    return _selQuestionIndex;
  }
}

mixin UserSModel on ConnectedQuestions {
  void login(String email, String password) {
    _authenticatedUser =
        UserModel(id: 'sbsdbcd', email: email, password: password);
  }
}
