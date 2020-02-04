import 'package:flutter/material.dart';

import 'package:sarvodian/widgets/UI elements/10pxsizedbox.dart';

class AdminLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdminLoginState();
  }
}

class _AdminLoginState extends State<AdminLogin> {
  final GlobalKey<FormState> _adminformkey = GlobalKey<FormState>();

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      image: AssetImage('assets/sarvo.jpg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
    );
  }

  Widget _buildAdminUsernameField() {
    return TextFormField(
      validator: (String value) {
        if (value != 'admin') {
          return 'Username Invalid';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Username',
      ),
      keyboardType: TextInputType.text,
      onSaved: (String value) {},
    );
  }

  Widget _buildAdminPasswordField() {
    return TextFormField(
      obscureText: true,
      validator: (String value) {
        if (value != 'admin') {
          return 'Password Invalid';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Password',
      ),
      onSaved: (String value) {},
    );
  }

  Widget _buildAdminSubmitButton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        if (!_adminformkey.currentState.validate()) {
          return;
        }
        _adminformkey.currentState.save();
        Navigator.pushReplacementNamed(context, '/adminhome');
      },
    );
  }

  Widget _buildBottomRightContainer() {
    return Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(
          child: Text(
            'Not Admin?',
            style: TextStyle(
              //color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/',
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ADMIN Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Form(
                key: _adminformkey,
                child: Column(
                  children: <Widget>[
                    _buildAdminUsernameField(),
                    SizedBox10px(),
                    _buildAdminPasswordField(),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildAdminSubmitButton(),
                        _buildBottomRightContainer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
