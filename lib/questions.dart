import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Questions extends StatelessWidget {
  final List<String> questions;

  Questions(this.questions);

  Widget _buildQuestion(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(
            questions[index],
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10.0,
          )
          /*ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () {
                    Navigator.pushNamed<bool>(
                        context, '/product/' + index.toString());
                  }),
            ],
          )*/
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
