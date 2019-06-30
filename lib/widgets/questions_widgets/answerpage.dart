import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/scoped-models/main_smodel.dart';
import 'package:sarvodian/models/question_model.dart';

import 'package:sarvodian/widgets/UI elements/questiontitle.dart';
import 'package:sarvodian/widgets/UI elements/colordividerline.dart';

class AnswerPage extends StatefulWidget {
  final int questionIndex;

  AnswerPage(this.questionIndex);
  @override
  State<StatefulWidget> createState() {
    return _AnswerPageState();
  }
}

class _AnswerPageState extends State<AnswerPage> {
  String passValue;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildAnswerTextField() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextFormField(
        maxLines: 6,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter Answer',
        ),
        onSaved: (String value) {
          passValue = value;
        },
      ),
    );
  }

  Widget _buildAnswerSubmitButton(BuildContext context, MainModel model) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.question_answer,
        color: Theme.of(context).accentColor,
      ),
      onPressed: () => _submitForm(model),
    );
  }

  void _submitForm(MainModel model) {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();

    print(passValue);
    final QuestionModel question = QuestionModel(
        question: model.allQuestion[widget.questionIndex].question,
        email: model.allQuestion[widget.questionIndex].email,
        answer: passValue);

    model.allQuestion[widget.questionIndex] = question;
    Navigator.pop(context);
    model.notify();
    print(passValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Answer')),
        body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
            return Column(
              children: <Widget>[
                QuestionTitle(model.allQuestion[widget.questionIndex].question),
                ColorDividerLine(),
                Form(
                  key: _formKey,
                  child: _buildAnswerTextField(),
                ),
                _buildAnswerSubmitButton(context, model),
              ],
            );
          },
        ));
  }
}
