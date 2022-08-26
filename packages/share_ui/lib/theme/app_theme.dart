import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_style.dart';
import 'font.dart';

class AppTheme {
  AppColor color;
  AppFont font;
  AppTextStyle textStyle;
  AppTheme(this.color, this.font, this.textStyle);
}

class DarkTheme extends AppTheme {
  DarkTheme()
      : super(
            DarkColor(),
            AppFont(AppFontFamily(), AppFontWeight(), AppFontSize()),
            AppTextStyle());
}

class LightTheme extends AppTheme {
  LightTheme()
      : super(
            LightColor(),
            AppFont(AppFontFamily(), AppFontWeight(), AppFontSize()),
            AppTextStyle());
}
