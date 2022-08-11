import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LanguageScreenState();
}

class LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Text("LanguageScreen"),
      )),
    );
  }
}
