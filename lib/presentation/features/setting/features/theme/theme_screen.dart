import 'package:flutter/material.dart';
import 'package:share_ui/theme/theme.dart';
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
              themeManager.updateTheme(SupportTheme.ice);
              Navigator.pop(context);
            },
            child: Row(children: [
              const Text("Light"),
              Text(themeManager.currentThemeType == SupportTheme.ice ? "X" : "")
            ]),
          ),
          ElevatedButton(
            onPressed: () {
              themeManager.updateTheme(SupportTheme.fire);
              Navigator.pop(context);
            },
            child: Row(children: [
              const Text("dark"),
              Text(
                  themeManager.currentThemeType == SupportTheme.fire ? "X" : "")
            ]),
          ),
          Text(
            "Current value color",
            style: const TextStyle()
                .copyWith(color: themeManager.current.color.grey900),
          )
        ],
      ),
    );
  }
}
