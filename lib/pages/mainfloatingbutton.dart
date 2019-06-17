import 'package:flutter/material.dart';

class MainFloatingButton extends StatelessWidget {
  final Function addQuestion;

  MainFloatingButton(this.addQuestion);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        addQuestion('This is a Question');
        return showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Modal'),
                  ],
                ));
      },
      tooltip: 'Add Questions',
      child: Icon(Icons.add),
    );
  }
}
