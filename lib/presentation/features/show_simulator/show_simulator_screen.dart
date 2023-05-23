import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/simulator/page_model.dart';
import 'package:my_bad/presentation/widget/loading/simulator/simulator.dart';

import '../../widget/loading/header/vib_header_editor.dart';
import '../../widget/loading/header/vib_header_view_model.dart';

class ShowSimulatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowSimulatorScreenState();
}

class _ShowSimulatorScreenState extends State<ShowSimulatorScreen> {
  PageModel pageModel = PageModel.mockObject();

// VIBHeaderEditInfoView(model: model)
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text("left"),
        ),
        Container(
          width: 414,
          child: SimulatorWidget(
            pageModel: pageModel,
          ),
        )
      ],
    ));
  }
}
