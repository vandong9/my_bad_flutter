import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/simulator/simulator.dart';

import '../../widget/loading/header/vib_header_editor.dart';
import '../../widget/loading/header/vib_header_view_model.dart';

class ShowSimulatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowSimulatorScreenState();
}

class _ShowSimulatorScreenState extends State<ShowSimulatorScreen> {
  VibHeaderViewRenderObject model = VibHeaderViewRenderObject.mockObject();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: VIBHeaderEditInfoView(model: model),
        ),
        Container(
          width: 414,
          child: SimulatorWidget(),
        )
      ],
    ));
  }
}
