import 'dart:io';

import 'package:flutter/material.dart';

class QuestionModel {
  final String question;
  String answer;
  final String email;
  List<File> images;

  QuestionModel({
    @required this.question,
    @required this.email,
    this.answer,
    this.images,
  });
}
