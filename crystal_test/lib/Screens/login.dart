import 'package:crystal_test/CustomWidget/app_button.dart';
import 'package:crystal_test/CustomWidget/custom_text_field.dart';
import 'package:crystal_test/CustomWidget/app_text.dart';
import 'package:crystal_test/Screens/profile_screen.dart';
import 'package:crystal_test/Utils/app_colors.dart';
import 'package:crystal_test/Utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController EmailCtr = TextEditingController();
  TextEditingController PasswordCtr = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsPath().dogBackground),
              fit: BoxFit.fitHeight),
        ),
        child: Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                AppColors().primeryColor.withOpacity(0.5),
                AppColors().primeryColor,
              ],
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Apptext(
                  'Welcome back',
                  fontWeight: FontWeight.w500,
                  fontSize: 35,
                ),
                SizedBox(height: 5),
                Apptext(
                  'Login to your account',
                  fontSize: 14,
                ),
                SizedBox(height: 30),

                //Email
                CustomTextFormField(
                  controller: EmailCtr,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Username or Email',
                ),

                //Password
                SizedBox(height: 10),
                CustomTextFormField(
                  controller: PasswordCtr,
                  textInputType: TextInputType.visiblePassword,
                  hintText: 'Password',
                ),

                //Login Button
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () {
                      Get.to(()=>ProfileScreen());
                    },
                    text: 'LOGIN',
                  ),
                ),

                //Forgot password
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Apptext('Forgot your password?'),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),
              ]),
        ),
      ),
    );
  }
}
