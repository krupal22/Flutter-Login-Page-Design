import 'package:crystal_test/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  TextInputType textInputType;
  String hintText;

  CustomTextFormField({required this.controller,this.textInputType=TextInputType.name,this.hintText=''});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(

        isDense: true,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          fillColor: Colors.white.withOpacity(0.20),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
