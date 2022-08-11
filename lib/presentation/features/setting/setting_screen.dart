import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          children: [Text("Change theme")],
        ),
        Text("Change language")
      ]),
    );
  }
}
