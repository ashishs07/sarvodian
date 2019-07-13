import 'package:flutter/material.dart';

import 'package:sarvodian/widgets/admin_controls/admin_home.dart';

class AdminDrawer extends StatelessWidget {
  Widget _buildAnswerListTile(BuildContext context) {
    return ListTile(
      title: Text('Answer Questions'),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => AdminHomePage()));
      },
    );
  }

  Widget _buildLogoutListTile(BuildContext context) {
    return ListTile(
      title: Text('Logout'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildAnswerListTile(context),
          _buildLogoutListTile(context),
        ],
      ),
    );
  }
}
