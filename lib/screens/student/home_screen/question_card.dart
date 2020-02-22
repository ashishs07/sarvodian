import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../models/question_model.dart';
import '../../../widgets/questiontitle.dart';
import '../../../widgets/colordividerline.dart';

class StudentQuestionCard extends StatelessWidget {
  final QuestionModel question;

  StudentQuestionCard(this.question);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: QuestionTitle(question.question),
                  ),
                  if (question.images != null)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.image),
                      ),
                    ),
                ],
              ),
              ColorDividerLine(150.0),
              if (question.answer != null)
                Text(
                  question.answer,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => QuestionCardView(question)));
      },
    );
  }
}

class QuestionCardView extends StatelessWidget {
  final QuestionModel question;
  QuestionCardView(this.question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(question.question),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          CarouselSlider.builder(
            enableInfiniteScroll: false,
            height: 300,
            itemCount: question.images.length,
            itemBuilder: (ctx, index) => GestureDetector(
              child: Image.file(question.images[index]),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => Scaffold(
                      body: Center(
                        child: Image.file(question.images[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
