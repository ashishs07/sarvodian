import 'package:flutter/material.dart';

class QuestionModel {
  final String id;
  final String question;
  String answer;

  final String email;

  QuestionModel({
    @required this.id,
    @required this.question,
    this.answer,
    @required this.email,
  });
}
