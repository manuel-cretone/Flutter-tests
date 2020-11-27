import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 1.0,
        width: 100.0,
        color: Color(0xffa8d0e6));
  }

  Widget buildSeparatorNull() {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 1.0,
        width: 100.0);
  }

  Widget buildLongSeparator() {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 2.0,
        width: 200.0,
        color: Color(0xffa8d0e6));
  }
}
