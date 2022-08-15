import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_bad/presentation/features/setting/features/language/language_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [const Text("Change theme")],
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
