import 'package:flutter/material.dart';

import '../question_manager.dart';
import './mainfloatingbutton.dart';

class MyHomePage extends StatelessWidget {
  final List<String> questions;
  final Function addQuestion;

  MyHomePage(this.questions, this.addQuestion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Browse Questions'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Events'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Batch Timings'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Sarvodaya Team'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Meritorious Students'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
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
