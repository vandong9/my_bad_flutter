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

class DartColor extends AppColor {
  @override
  Color transparent() => const Color.fromARGB(0, 81, 52, 52);
}
