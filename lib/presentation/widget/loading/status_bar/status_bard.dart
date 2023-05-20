import 'package:flutter/material.dart';

import '../../../../r.dart';

class StatusBardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text("9:41"),
        Row(
          children: [Image.asset(R.controlsImages.cmWifiIc)],
        )
      ]),
    );
  }
}
