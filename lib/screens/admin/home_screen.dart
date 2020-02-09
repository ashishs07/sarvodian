import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/question_provider.dart';
import './drawer.dart';
import './question_card.dart';

class AdminHomeScreen extends StatelessWidget {
  static const routeName = '/admin-home';
  @override
  Widget build(BuildContext context) {
    final questionData = Provider.of<QuestionProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Controls'),
      ),
      drawer: AdminDrawer(),
      body: ListView.builder(
        itemCount: questionData.questions.length,
        itemBuilder: (ctx, index) =>
            AdminQuestionCard(questionData.questions[index], index),
      ),
    );
  }
}
