import 'package:flutter/material.dart';
import 'package:my_bad/common/theme/theme_manager.dart';
import 'package:my_bad/di/injector.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ThemeScreenState();
}

class ThemeScreenState extends State<ThemeScreen> {
  ThemeManager themeManager = sl<ThemeManager>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              themeManager.updateTheme(SupportTheme.light);
              Navigator.pop(context);
            },
            child: Row(children: [
              Text("Light"),
              Text(themeManager.currentThemeType == SupportTheme.light
                  ? "X"
                  : "")
            ]),
          ),
          ElevatedButton(
            onPressed: () {
              themeManager.updateTheme(SupportTheme.dark);
              Navigator.pop(context);
            },
            child: Row(children: [
              Text("dark"),
              Text(
                  themeManager.currentThemeType == SupportTheme.dark ? "X" : "")
            ]),
          ),
          Text(
            "Current value color",
            style: const TextStyle()
                .copyWith(color: themeManager.current.color.transparent()),
          )
        ],
      ),
    );
  }
}
