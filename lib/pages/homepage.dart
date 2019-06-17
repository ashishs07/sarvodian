import 'package:flutter/material.dart';

import '../question_manager.dart';
import './mainfloatingbutton.dart';
import './homedrawer.dart';

class MyHomePage extends StatelessWidget {
  final List<String> questions;
  final Function addQuestion;

  MyHomePage(this.questions, this.addQuestion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text('Sarvodian'),
      ),
      body: Center(
        child: QuestionManager(questions),
      ),
      floatingActionButton: MainFloatingButton(addQuestion),
    );
  }
}
