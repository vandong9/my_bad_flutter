import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_style.dart';
import 'font.dart';

class AppTheme {
  AppColor color;
  AppFont font;
  AppTextStyle textStyle;
  AppTheme(this.color, this.font, this.textStyle);

  static AppTheme? ofContext(BuildContext context) {
    return null;
  }
}

class InheritedAppThemeProvider extends InheritedWidget {
  final AppTheme appTheme;

  const InheritedAppThemeProvider(
      {Key? key, required this.appTheme, required Widget child})
      : super(key: key, child: child);

  static InheritedAppThemeProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedAppThemeProvider>();

  @override
  bool updateShouldNotify(covariant InheritedAppThemeProvider oldWidget) =>
      appTheme != oldWidget.appTheme;
}
