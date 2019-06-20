import 'package:flutter/material.dart';

import 'package:sarvodian/pages/eventspage.dart';
import 'package:sarvodian/pages/batchtimingspage.dart';
import 'package:sarvodian/pages/sarvodayateam.dart';
import 'package:sarvodian/pages/studentspage.dart';
import 'package:sarvodian/pages/contactpage.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            title: Text('Browse Questions'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Events'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => EventsPage()));
            },
          ),
          ListTile(
            title: Text('Batch Timings'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BatchtimingsPage()));
            },
          ),
          ListTile(
            title: Text('Sarvodaya Team'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SarvodayateamPage()));
            },
          ),
          ListTile(
            title: Text('Meritorious Students'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => StudentsPage()));
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ContactPage()));
            },
          ),
        ],
      ),
    );
  }
}
