import 'package:flutter/material.dart';

import './questions.dart';

class QuestionManager extends StatelessWidget {
  final List<String> questions;

  QuestionManager(this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Questions(questions)),
      ],
    );
  }
}
