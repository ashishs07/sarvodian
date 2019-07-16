import 'package:flutter/material.dart';
import 'package:sarvodian/models/question_model.dart';

import 'package:sarvodian/widgets/UI elements/questiontitle.dart';
import 'package:sarvodian/widgets/UI elements/colordividerline.dart';

class QuestionCard extends StatelessWidget {
  final QuestionModel question;
  final int index;

  QuestionCard(this.question, this.index);

  Widget _buildAnswer() {
    if (question.answer != '') {
      return Text(
        question.answer,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
      );
    }
    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          QuestionTitle(question.question),
          ColorDividerLine(150.0),
          _buildAnswer(),
        ],
      ),
    );
  }
}
