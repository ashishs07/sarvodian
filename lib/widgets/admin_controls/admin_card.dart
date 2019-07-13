import 'package:flutter/material.dart';
import 'package:sarvodian/models/question_model.dart';

import 'package:sarvodian/widgets/UI elements/questiontitle.dart';
import 'package:sarvodian/widgets/UI elements/colordividerline.dart';

class AdminQuestionCard extends StatelessWidget {
  final QuestionModel question;
  final int index;

  AdminQuestionCard(this.question, this.index);

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
          ColorDividerLine(10.0),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
                tooltip: 'UserEmail: ' + question.email,
              ),
              //Add MediaQuery for Placement of RaisedButton
              SizedBox(width: 80.0),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed<bool>(
                      context, '/question/' + index.toString());
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
