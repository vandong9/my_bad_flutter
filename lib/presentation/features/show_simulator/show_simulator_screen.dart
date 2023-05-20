import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/simulator/simulator.dart';

class ShowSimulatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowSimulatorScreenState();
}

class _ShowSimulatorScreenState extends State<ShowSimulatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(children: [Text("data")]),
        ),
        Container(
          width: 414,
          child: SimulatorWidget(),
        )
      ],
    ));
  }
}
