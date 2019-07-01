import 'package:flutter/material.dart';

class ColorDividerLine extends StatelessWidget {
  final double width;

  ColorDividerLine(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width),
      height: 1.0,
      color: Theme.of(context).primaryColor,
    );
  }
}
