import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';

class Menu extends StatelessWidget {

  GestureTapCallback onTap;
  IconData icon;

  Menu({required this.onTap, this.icon=Icons.notifications});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10,top: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors().appbarMenuBackgroundColor
        ),
        child: Icon(icon),
      ),
    );
  }
}
