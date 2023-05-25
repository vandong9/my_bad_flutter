import 'package:flutter/material.dart';

class PageTreeNodeWidget extends StatefulWidget {
  const PageTreeNodeWidget({super.key});

  @override
  State<StatefulWidget> createState() => PageTreeNodeWidgetState();
}

class PageTreeNodeWidgetState extends State<PageTreeNodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Text("--"), Text("data")],
      ),
    );
  }
}
