import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/scoped-models/main_smodel.dart';
import 'package:sarvodian/models/question_model.dart';

import 'package:sarvodian/widgets/questions_widgets/question_card.dart';

class Questions extends StatelessWidget {
  Widget _buildQuestionList(List<QuestionModel> questions) {
    Widget questionCard;
    if (questions.length > 0) {
      questionCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            QuestionCard(questions[index], index),
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
