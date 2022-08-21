import 'package:shared_preferences/shared_preferences.dart';

import 'colors.dart';
import 'font.dart';
import 'text_style.dart';
import 'app_theme.dart';

enum SupportTheme { dark, light }

extension SupportThemePreferance on SupportTheme {
  String name() {
    switch (this) {
      case SupportTheme.light:
        {
          return "SupportTheme.light";
        }
      case SupportTheme.dark:
        {
          return "SupportTheme.dark";
        }
    }
  }

  static SupportTheme? themeTypeByName(String themeName) {
    if (themeName == SupportTheme.light.name()) {
      return SupportTheme.light;
    }

    if (themeName == SupportTheme.dark.name()) {
      return SupportTheme.dark;
    }

    return null;
  }
}

class ThemeManager {
  SupportTheme currentThemeType = SupportTheme.light;
  late AppTheme current;
  final String _storageThemeKey = "StorageThemeKey";
  final SupportTheme _defaultThemeType = SupportTheme.light;
  Function? onChangedCurrentTheme;
  late SharedPreferences prefs;

  Future loadStorageTheme() async {
    prefs = await SharedPreferences.getInstance();
    String type = prefs.getString(_storageThemeKey) ?? "";
    SupportTheme themeType =
        SupportThemePreferance.themeTypeByName(type) ?? _defaultThemeType;

    switch (themeType) {
      case SupportTheme.light:
        {
          current = LightTheme();
        }
        break;
      case SupportTheme.dark:
        {
          current = DarkTheme();
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
      case SupportTheme.light:
        {
          current = LightTheme();
        }
        break;
      case SupportTheme.dark:
        {
          current = DarkTheme();
        }
        break;
    }

    prefs.setString(_storageThemeKey, newThemeType.name());
    if (onChangedCurrentTheme != null) {
      onChangedCurrentTheme!();
    }
  }
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
