import 'package:flutter/material.dart';

import '../question_manager.dart';

class MyHomePage extends StatelessWidget {
  final List<String> questions;
  final Function addQuestion;

  MyHomePage(this.questions, this.addQuestion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sarvodian'),
      ),
      body: Center(
        child: QuestionManager(questions),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addQuestion('Question');
        },
        tooltip: 'Add Questions',
        child: Icon(Icons.add),
      ),
    );
  }
}
