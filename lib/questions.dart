import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import './pages/answerpage.dart';
import './widgets/UI elements/questiontitle.dart';
import './widgets/UI elements/colordividerline.dart';

class Questions extends StatelessWidget {
  final List<String> questions;

  Questions(this.questions);

  Widget _buildQuestion(BuildContext context, int index) {
    return Card(
        semanticContainer: true,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            QuestionTitle(questions[index]),
            ColorDividerLine(),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AnswerPage(questions[index])));
              },
            ),
          ],
        ));
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
