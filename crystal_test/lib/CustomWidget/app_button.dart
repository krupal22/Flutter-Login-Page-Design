import 'package:crystal_test/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  Color? btnColor;
  Color textColor;

  AppButton(
      {required this.onPressed,
      this.text = '',
      this.btnColor,
      this.textColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(backgroundColor: btnColor??AppColors().buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),

      ),
    );
  }
}
