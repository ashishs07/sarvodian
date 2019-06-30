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
      return Text(question.answer);
    }
    return Text('Not answered Yet');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            QuestionTitle(question.question),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Answer: '),
                _buildAnswer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('UserEmail: '),
                Text(question.email),
              ],
            ),
            ColorDividerLine(),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed<bool>(
                    context, '/question/' + index.toString());
              },
            ),
          ],
        ));
  }
}
