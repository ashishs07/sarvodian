import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/question_provider.dart';

import './drawer.dart';
import './question_card.dart';

class StudentHomeScreen extends StatelessWidget {
  static const routeName = '/student-home';

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final questionData = Provider.of<QuestionProvider>(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Questions'),
      ),
      drawer: StudentDrawer(),
      body: ListView.builder(
        itemCount: questionData.questions.length,
        itemBuilder: (ctx, index) =>
            StudentQuestionCard(questionData.questions[index], index),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {
          _scaffoldKey.currentState
              .showBottomSheet((ctx) => StudentAddQuestion());
        },
      ),
    );
  }
}

class StudentAddQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Form(
          child: ListView(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Your question',
            ),
            minLines: 2,
            maxLines: 5,
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: RaisedButton.icon(
              icon: Icon(Icons.save),
              label: Text('Save'),
              onPressed: () {},
            ),
          )
        ],
      )),
    );
  }
}
