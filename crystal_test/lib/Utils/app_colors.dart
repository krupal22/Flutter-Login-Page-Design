

import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors{

  Color primeryColor=HexColor("#120f2e");
  Color textFieldColor=HexColor("#332f54");
  Color buttonColor=HexColor("#a98ffd");


  Color appbarMenuBackgroundColor=HexColor("#292255");
  Color appbarBackgroundColor=HexColor("#0d0a25");

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}