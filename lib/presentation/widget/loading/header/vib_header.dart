import 'package:flutter/material.dart';

class VIBHeaderView extends StatelessWidget {
  final String leftIconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(8),
            child: Icon(Icons.abc_outlined),
          )
        ],
      ),
    );
  }
}
