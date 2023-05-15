import 'package:flutter/material.dart';

class Apptext extends StatelessWidget {

  String text;
  double fontSize;
  FontWeight fontWeight;
  Color colors;

  Apptext(this.text, {this.fontSize = 14, this.fontWeight=FontWeight.normal, this.colors=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color: colors),);
  }
}
