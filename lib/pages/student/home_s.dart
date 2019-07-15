import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/widgets/questions_widgets/question_card.dart';
import 'package:sarvodian/scoped-models/main_smodel.dart';
import 'package:sarvodian/widgets/questions_widgets/homedrawer.dart';
import 'package:sarvodian/widgets/questions_widgets/homefloatingbutton.dart';

class StudentHomePage extends StatelessWidget {
  Widget _buildAppBar() {
    return SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      expandedHeight: 160.0,
      title: Text("Sarvodian"),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/sarvo.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildSilverList() {
    return ScopedModelDescendant(
      builder: (BuildContext context, Widget child, MainModel model) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return QuestionCard(
                  model.allQuestion[model.allQuestion.length - index - 1],
                  model.allQuestion.length - index - 1);
            },
            childCount: model.allQuestion.length,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          _buildAppBar(),
          _buildSilverList(),
        ],
      ),
      floatingActionButton: MainFloatingButton(),
    );
  }
}
