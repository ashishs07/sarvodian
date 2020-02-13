import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/question_provider.dart';
import './drawer.dart';
import './widgets/question_card.dart';
import './widgets/add_question.dart';

class StudentHomeScreen extends StatelessWidget {
  static const routeName = '/student-home';
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Questions'),
      ),
      drawer: StudentDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildQuestionList(context),
      ),
      floatingActionButton: _buildFloatingButton(),
    );
  }

  Widget _buildQuestionList(BuildContext context) {
    final questionData = Provider.of<QuestionProvider>(context);
    return ListView.builder(
      itemCount: questionData.questions.length,
      itemBuilder: (ctx, index) =>
          StudentQuestionCard(questionData.questions[index]),
    );
  }

  Widget _buildFloatingButton() {
    return FloatingActionButton(
      child: Icon(
        Icons.add,
        size: 35,
      ),
      onPressed: () {
        _scaffoldKey.currentState
            .showBottomSheet((ctx) => StudentAddQuestion());
      },
    );
  }
}
