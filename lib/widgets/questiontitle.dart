import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String title;

  QuestionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
