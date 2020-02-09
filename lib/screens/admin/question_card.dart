import 'package:flutter/material.dart';

import '../../models/question_model.dart';
import '../../widgets/questiontitle.dart';
import '../../widgets/colordividerline.dart';

class AdminQuestionCard extends StatelessWidget {
  final QuestionModel question;
  final int index;

  AdminQuestionCard(this.question, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          QuestionTitle(question.question),
          ColorDividerLine(150.0),
          if (question.answer != null)
            Text(
              question.answer,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          if (question.answer != null) ColorDividerLine(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
                tooltip: 'UserEmail: ' + question.email,
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Icon(Icons.edit),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
