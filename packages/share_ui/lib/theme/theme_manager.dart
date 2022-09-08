import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_theme.dart';

enum SupportTheme { fire, ice }

extension SupportThemePreferance on SupportTheme {
  String name() {
    switch (this) {
      case SupportTheme.ice:
        {
          return "SupportTheme.ice";
        }
      case SupportTheme.fire:
        {
          return "SupportTheme.fire";
        }
    }
  }

  static SupportTheme? themeTypeByName(String themeName) {
    if (themeName == SupportTheme.ice.name()) {
      return SupportTheme.ice;
    }

    if (themeName == SupportTheme.fire.name()) {
      return SupportTheme.fire;
    }

    return null;
  }
}

class ThemeManager {
  SupportTheme currentThemeType = SupportTheme.ice;
  late AppTheme current;
  final String _storageThemeKey = "StorageThemeKey";
  final SupportTheme _defaultThemeType = SupportTheme.ice;
  late SharedPreferences _prefs;

  BehaviorSubject<AppTheme> themeChangeSubject = BehaviorSubject();
  Function? onChangedCurrentTheme;

  Future loadStorageTheme() async {
    _prefs = await SharedPreferences.getInstance();
    String type = _prefs.getString(_storageThemeKey) ?? "";
    SupportTheme themeType =
        SupportThemePreferance.themeTypeByName(type) ?? _defaultThemeType;

    switch (themeType) {
      case SupportTheme.ice:
        {
          current = IceTheme();
        }
        break;
      case SupportTheme.fire:
        {
          current = FireTheme();
        }
        break;
    }
  }

  updateTheme(SupportTheme newThemeType) {
    if (currentThemeType == newThemeType) {
      return;
    }
    currentThemeType = newThemeType;
    switch (newThemeType) {
      case SupportTheme.ice:
        {
          current = IceTheme();
        }
        break;
      case SupportTheme.fire:
        {
          current = FireTheme();
        }
        break;
    }

    _prefs.setString(_storageThemeKey, newThemeType.name());
    if (onChangedCurrentTheme != null) {
      onChangedCurrentTheme!();
    }

    themeChangeSubject.add(current);
  }
}

/// wrap to view so can use .of(context)
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
