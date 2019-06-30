import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String _title;

  QuestionTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Text(
        _title,
        style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
