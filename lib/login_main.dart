import 'package:flutter/material.dart';
//import 'package:scoped_model/scoped_model.dart';

import 'package:sarvodian/scoped-models/Connected_questions.dart';

import 'package:sarvodian/widgets/UI elements/10pxsizedbox.dart';

import 'package:sarvodian/pages/student/auth_s.dart';
import 'package:sarvodian/pages/admin/auth_a.dart';
import 'package:sarvodian/pages/guest/auth_g.dart';

class LoginSelectPage extends StatefulWidget {
  final QuestionSModel model;

  LoginSelectPage(this.model);

  @override
  State<StatefulWidget> createState() {
    return _LoginSelectPageState();
  }
}

class _LoginSelectPageState extends State<LoginSelectPage> {
  @override
  void initState() {
    widget.model.fetchQuestions();
    super.initState();
  }

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      image: AssetImage('assets/stripes.jpg'),
      fit: BoxFit.fitHeight,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
    );
  }

  Widget _buildStudentLoginButton(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 35,
      width: 125,
      child: FlatButton(
        child: Text('Student Login'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => AuthPage()));
        },
      ),
    );
  }

  Widget _buildAdminLoginButton(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 35,
      width: 125,
      child: FlatButton(
        child: Text('Admin Login'),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => AdminLogin()));
        },
      ),
    );
  }

  Widget _buildGuestLoginButton(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 35,
      width: 125,
      child: FlatButton(
        child: Text('Guest Login'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => GuestHomePage()));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        //padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 10,
                //shape: RoundedRectangleBorder(),
                color: Colors.white,
                borderOnForeground: true,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      _buildStudentLoginButton(context),
                      SizedBox10px(),
                      _buildAdminLoginButton(context),
                      SizedBox10px(),
                      _buildGuestLoginButton(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
