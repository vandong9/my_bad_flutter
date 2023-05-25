import 'package:flutter/material.dart';
import 'package:my_bad/presentation/features/setting/features/language/language_screen.dart';
import 'package:my_bad/presentation/features/setting/features/theme/theme_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThemeScreen()),
            );
          },
          child: const Text("Change theme"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LanguageScreen()),
            );
          },
          child: const Text("Change language"),
        )
      ]),
    );
  }
}
