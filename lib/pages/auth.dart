import 'package:flutter/material.dart';

import '../widgets/UI elements/10pxsizedbox.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'terms': false,
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      image: AssetImage('assets/sarvo.jpg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(Icons.email),
        // border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(Icons.security),
        //border: OutlineInputBorder(),
      ),
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  Widget _buildTermsSwitchTile() {
    return Switch(
      value: _formData['terms'],
      onChanged: (bool value) {
        setState(() {
          _formData['terms'] = !_formData['terms'];
        });
      },
      activeColor: Theme.of(context).primaryColor,
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton.icon(
      label: Text('Submit'),
      icon: Icon(
        Icons.arrow_forward,
      ),
      onPressed: _submitForm,
    );
  }

//!_formKey.currentState.validate() ||
  void _submitForm() {
    if (!_formData['terms']) {
      return;
    }
    _formKey.currentState.save();
    //login(_formData['email'], _formData['password']);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
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
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox10px(),
                    _buildPasswordTextField(),
                    _buildTermsSwitchTile(),
                    _buildSubmitButton(),
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
