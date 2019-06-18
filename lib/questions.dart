import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import './pages/questionpage.dart';

class Questions extends StatelessWidget {
  final List<String> questions;

  Questions(this.questions);

  Widget _buildQuestion(BuildContext context, int index) {
    return Card(
      semanticContainer: true,
      margin: EdgeInsets.all(7.0),
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                questions[index],
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 1.0,
            color: Theme.of(context).primaryColor,
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              QuestionPage(questions[index])));
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildQuestionList() {
    Widget questionCard;
    if (questions.length > 0) {
      questionCard = ListView.builder(
        itemBuilder: _buildQuestion,
        itemCount: questions.length,
      );
    } else {
      questionCard = Center(child: Text('No Questions added.'));
    }
    return questionCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildQuestionList();
  }
}
