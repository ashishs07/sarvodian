import 'package:sarvodian/scoped-models/Connected_questions.dart';
import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model
    with ConnectedQuestions, UserSModel, QuestionSModel {}
