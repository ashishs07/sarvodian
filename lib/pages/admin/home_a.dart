import 'package:flutter/material.dart';

import 'package:sarvodian/widgets/admin/drawer_a.dart';
import 'package:sarvodian/widgets/admin/list_a.dart';

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
