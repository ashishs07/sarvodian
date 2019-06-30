import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped-models/main_smodel.dart';
import './models/question_model.dart';

import './pages/answerpage.dart';
import './widgets/UI elements/questiontitle.dart';
import './widgets/UI elements/colordividerline.dart';

class Questions extends StatelessWidget {
  Widget _buildQuestion(BuildContext context, QuestionModel question) {
    return Card(
        semanticContainer: true,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            QuestionTitle(question.question),
            Text(question.email),
            ColorDividerLine(),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AnswerPage(question.question)));
              },
            ),
          ],
        ));
  }

  Widget _buildQuestionList(List<QuestionModel> questions) {
    Widget questionCard;
    if (questions.length > 0) {
      questionCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            _buildQuestion(context, questions[index]),
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
