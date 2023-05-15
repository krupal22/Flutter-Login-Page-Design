import 'package:crystal_test/CustomWidget/menu.dart';
import 'package:crystal_test/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors().appbarBackgroundColor,
            leading: SizedBox.shrink(),
          actions: [
            Menu(onTap: (){},icon: Icons.shopping_cart),
            Menu(onTap: (){},icon: Icons.notifications),
            Menu(onTap: (){},icon: Icons.message_rounded),
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(bottom: 10,top: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors().appbarMenuBackgroundColor,
                  image: DecorationImage(image: NetworkImage('https://www.pngitem.com/pimgs/m/41-412576_dog-face-png-transparent-png.png'))
                ),
              ),
            )
          ],

        ),
        backgroundColor: AppColors().appbarBackgroundColor,
        body: Container());
  }
}
