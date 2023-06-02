import 'package:flutter/material.dart';

import '../../../features/show_simulator/show_simulator_screen.dart';
import '../edit_input_field/edit_input_field_widget.dart';
import '../support_widgets/pick_color_button/pick_color_button_widget.dart';
import '../support_widgets/pick_image_button/pick_image_button.dart';
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
          model.attribute.layout.top = double.parse(newValue);
          widget.onChanged();
        },
      ),
      PairKeyValueWidget(
        fieldName: "left",
        value: model.attribute.layout.left.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.left = double.parse(newValue);
          widget.onChanged();
        },
      ),
      PairKeyValueWidget(
        fieldName: "right",
        value: model.attribute.layout.right.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.right = double.parse(newValue);
          widget.onChanged();
        },
      ),
      PairKeyValueWidget(
        fieldName: "height",
        value: model.attribute.layout.height.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.height = double.parse(newValue);
          widget.onChanged();
        },
      ),
      Row(
        children: [
          const SizedBox(width: 200, child: Text("background color")),
          PickColorButtonWidget(
            initValue: model.attribute.layout.backgroundColorName,
            onSelected: (newColor) {
              model.attribute.layout.backgroundColorName = newColor;
              widget.onChanged();
            },
          ),
        ],
      )
    ];
  }

  List<Widget> editAttributeWidgets() {
    List<Widget> widgets = [];
    widgets.add(Row(
      children: [
        const SizedBox(width: 200, child: Text("Left icon")),
        PickImageButtonWidget(
          initValue: model.attribute.properties.leftIcon,
          onSelected: (newImageName) {
            model.attribute.properties.leftIcon = newImageName;
            widget.onChanged();
          },
        ),
      ],
    ));

    widgets.add(Row(
      children: [
        const SizedBox(width: 200, child: Text("Right icon")),
        PickImageButtonWidget(
          initValue: model.attribute.properties.rightIcon,
          onSelected: (newImageName) {
            model.attribute.properties.rightIcon = newImageName;
            widget.onChanged();
          },
        ),
      ],
    ));

    widgets.add(
      PairKeyValueWidget(
        fieldName: "Title",
        value: model.attribute.properties.title,
        valueChanged: (newValue) {
          model.attribute.properties.title = newValue;
          widget.onChanged();
        },
      ),
    );

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Layout"),
        Column(
          children: propertiesWidgets(),
        ),
        const Text("Attributes:"),
        Column(
          children: editAttributeWidgets(),
        )
      ]),
    );
  }
}
