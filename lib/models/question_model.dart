import 'package:flutter/material.dart';

class QuestionModel {
  final String question;
  String answer;
  final String email;

  QuestionModel({
    @required this.question,
    this.answer,
    @required this.email,
  });
}
