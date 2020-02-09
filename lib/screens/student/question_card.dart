import 'package:flutter/material.dart';

import '../../models/question_model.dart';
import '../../widgets/questiontitle.dart';
import '../../widgets/colordividerline.dart';

class StudentQuestionCard extends StatelessWidget {
  final QuestionModel question;
  final int index;

  StudentQuestionCard(this.question, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            QuestionTitle(question.question),
            ColorDividerLine(150.0),
            if (question.answer != null)
              Text(
                question.answer,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
          ],
        ),
      ),
    );
  }
}
