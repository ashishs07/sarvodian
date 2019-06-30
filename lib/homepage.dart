import 'package:flutter/material.dart';

import 'package:sarvodian/widgets/questions_widgets/questions_list.dart';
import 'package:sarvodian/widgets/questions_widgets/homedrawer.dart';
import 'package:sarvodian/widgets/questions_widgets/homefloatingbutton.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text('Sarvodian'),
      ),
      body: Center(
        child: Questions(),
      ),
      floatingActionButton: MainFloatingButton(),
    );
  }
}
