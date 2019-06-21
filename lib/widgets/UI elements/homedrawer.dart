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
            leading: Icon(Icons.clear_all),
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text('Browse Questions'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text('Events'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => EventsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Batch Timings'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BatchtimingsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sarvodaya Team'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SarvodayateamPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Meritorious Students'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => StudentsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
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
