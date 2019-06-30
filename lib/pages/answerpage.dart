import 'package:flutter/material.dart';

import '../widgets/UI elements/questiontitle.dart';
import '../widgets/UI elements/colordividerline.dart';

class AnswerPage extends StatelessWidget {
  final String _question;

  AnswerPage(this._question);

  Widget _buildAnswerTextField() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        maxLines: 6,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter Answer',
        ),
        onChanged: (String value) {
          //passValue = value;
        },
      ),
    );
  }

  Widget _buildAnswerSubmitButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.question_answer,
        color: Theme.of(context).accentColor,
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Answer')),
      body: Column(
        children: <Widget>[
          QuestionTitle(_question),
          ColorDividerLine(),
          _buildAnswerTextField(),
          _buildAnswerSubmitButton(context),
        ],
      ),
    );
  }
}
