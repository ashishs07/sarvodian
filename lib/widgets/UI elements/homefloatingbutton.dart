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

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        return showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(20.0),
                        child: TextField(
                          maxLines: 6,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Question',
                          ),
                          onChanged: (String value) {
                            passValue = value;
                          },
                        )),
                    RaisedButton.icon(
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).accentColor,
                      ),
                      label: Text(
                        'Add',
                        style: TextStyle(color: Theme.of(context).accentColor),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        setState(() {
                          widget.addQuestion(passValue);
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ],
                ));
      },
      tooltip: 'Add Questions',
      child: Icon(Icons.add),
    );
  }
}
