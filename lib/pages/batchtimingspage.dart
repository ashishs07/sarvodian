import 'package:flutter/material.dart';

class BatchtimingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Batch Timings'),
      ),*/
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('FlexibleSpace title'),
              background: Image.asset(
                'assets/theweeknd.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}
