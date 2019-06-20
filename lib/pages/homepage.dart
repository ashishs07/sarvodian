import 'package:flutter/material.dart';

import '../questions.dart';
import '../widgets/UI elements/homedrawer.dart';
import '../widgets/UI elements/homefloatingbutton.dart';

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
        child: Questions(questions),
      ),
      floatingActionButton: MainFloatingButton(addQuestion),
    );
  }
}
