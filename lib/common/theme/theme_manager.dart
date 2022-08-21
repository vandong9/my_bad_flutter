import 'package:my_bad/common/theme/colors.dart';
import 'package:my_bad/common/theme/font.dart';
import 'package:my_bad/common/theme/text_style.dart';
import 'package:my_bad/di/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  ThemeManager() {
    switch (_loadStorageTheme()) {
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

  SupportTheme _loadStorageTheme() {
    String type = sl<SharedPreferences>().getString(_storageThemeKey) ?? "";
    return SupportThemePreferance.themeTypeByName(type) ?? _defaultThemeType;
  }

  void updateTheme(SupportTheme newThemeType) {
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

    sl<SharedPreferences>().setString(_storageThemeKey, newThemeType.name());
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
