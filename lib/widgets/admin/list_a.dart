import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:sarvodian/scoped-models/main_smodel.dart';

import 'package:sarvodian/models/question_model.dart';

import 'package:sarvodian/widgets/admin/card_a.dart';

class AdminQuestionsPage extends StatelessWidget {
  Widget _buildQuestionList(List<QuestionModel> questions) {
    Widget questionCard;
    if (questions.length > 0) {
      questionCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) => AdminQuestionCard(
            questions[questions.length - index - 1],
            questions.length - index - 1),
        itemCount: questions.length,
      );
    } else {
      questionCard = Center(child: Text('No Questions added.'));
    }
    return questionCard;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return _buildQuestionList(model.allQuestion);
      },
    );
  }
}
