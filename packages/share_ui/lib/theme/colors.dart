// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class AppColor {
  Color transparent = Colors.transparent;
  Color whiteColor = Colors.white;
  Color blackColor = Colors.black;
  Color primaryColor = Color(0xffffffff);
  Color primaryColorLight = Color(0xff53bdfc);
  Color primaryColorDay = Color(0xffc5e9fd);
  Color backgroundCellWeekPressed = Color(0xffc5e9fd);
  Color accentColor = Color(0xffD81B60);
}

class DarkColor extends AppColor {
  DarkColor() {
    accentColor = const Color(0xff000000);
    transparent = const Color.fromARGB(255, 174, 48, 48);
  }
}

class LightColor extends AppColor {
  LightColor() {
    accentColor = const Color(0xffffffff);
    transparent = const Color.fromARGB(255, 239, 233, 233);
  }
}
