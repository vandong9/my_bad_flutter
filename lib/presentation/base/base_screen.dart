import 'package:flutter/material.dart';

abstract class BaseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState();
}

abstract class BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context);
}
