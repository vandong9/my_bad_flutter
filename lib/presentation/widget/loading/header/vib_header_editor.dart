import 'package:flutter/material.dart';

import '../../../features/show_simulator/show_simulator_screen.dart';
import '../edit_input_field/edit_input_field_widget.dart';
import '../pick_color_button/pick_color_button_widget.dart';
import 'vib_header_view_model.dart';

class VIBHeaderEditInfoView extends StatefulWidget {
  VibHeaderViewRenderObject model;
  Function onChanged;
  VIBHeaderEditInfoView(
      {super.key, required this.model, required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    return VIBHeaderEditInfoViewState(model: model);
  }
}

class VIBHeaderEditInfoViewState extends State<VIBHeaderEditInfoView> {
  VibHeaderViewRenderObject model;
  VIBHeaderEditInfoViewState({required this.model});

  List<Widget> propertiesWidgets() {
    return [
      PairKeyValueWidget(
        fieldName: "top",
        value: model.attribute.layout.top.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.top = newValue;
          widget.onChanged();
        },
      ),
      PairKeyValueWidget(
        fieldName: "left",
        value: model.attribute.layout.left.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.left = newValue;
          widget.onChanged();
        },
      ),
      PairKeyValueWidget(
        fieldName: "right",
        value: model.attribute.layout.right.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.right = newValue;
        },
      ),
      PairKeyValueWidget(
        fieldName: "height",
        value: model.attribute.layout.height.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.height = newValue;
          widget.onChanged();
        },
      ),
      PickColorButtonWidget(
        initValue: model.attribute.layout.background_color,
        onSelected: (newColor) {
          model.attribute.layout.background_color = newColor;
          widget.onChanged();
        },
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Layout"),
        Column(
          children: propertiesWidgets(),
        )
      ]),
    );
  }
}
