import 'package:flutter/material.dart';

import 'package:sarvodian/widgets/admin_controls/admin_drawer.dart';
import 'package:sarvodian/widgets/admin_controls/admin_list.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Controls'),
      ),
      drawer: AdminDrawer(),
      body: AdminQuestionsPage(),
    );
  }
}
