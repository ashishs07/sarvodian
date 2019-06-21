import 'package:flutter/material.dart';

class MainFloatingButton extends StatefulWidget {
  final Function addQuestion;

  MainFloatingButton(this.addQuestion);

  @override
  State<StatefulWidget> createState() {
    return _MainFloatingButton();
  }
}

class _MainFloatingButton extends State<MainFloatingButton> {
  String passValue;

  void _buildBottomModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: _buildQuestionTextField(),
                ),
                RaisedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Add'),
                  onPressed: () {
                    widget.addQuestion(passValue);
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }

  Widget _buildQuestionTextField() {
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter Question',
      ),
      onChanged: (String value) {
        passValue = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Add Questions',
      child: Icon(Icons.add),
      onPressed: _buildBottomModalSheet,
    );
  }
}
