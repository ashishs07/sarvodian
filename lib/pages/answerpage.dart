import 'package:flutter/material.dart';

import '../widgets/UI elements/questiontitle.dart';

class AnswerPage extends StatelessWidget {
  final String _question;

  AnswerPage(this._question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Answer'),
        ),
        body: Column(children: <Widget>[
          QuestionTitle(_question),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 1.0,
            color: Theme.of(context).primaryColor,
          ),
          Container(
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
              )),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            child: Icon(
              Icons.question_answer,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          )
        ]));
  }
}