import 'package:flutter/material.dart';

class AppColor {
  Color transparent() => Colors.transparent;
  Color whiteColor = Colors.white;
  Color blackColor = Colors.black;
  Color primaryColor = Color(0xffffffff);
  Color primaryColorLight = Color(0xff53bdfc);
  Color primaryColorDay = Color(0xffc5e9fd);
  Color backgroundCellWeekPressed = Color(0xffc5e9fd);
  Color accentColor = Color(0xffD81B60);
}

class DarkColor extends AppColor {
  @override
  Color transparent() => const Color.fromARGB(255, 174, 48, 48);
}

class LightColor extends AppColor {
  @override
  Color transparent() => const Color.fromARGB(255, 239, 233, 233);
}
