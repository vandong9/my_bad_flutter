import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/header/vib_header.dart';
import 'package:my_bad/presentation/widget/loading/status_bar/status_bard.dart';

class SimulatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimulatorWidgetState();
  }
}

class _SimulatorWidgetState extends State<SimulatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(38))),
      child: Column(children: [StatusBardWidget(), VIBHeaderView()]),
    );
  }
}
