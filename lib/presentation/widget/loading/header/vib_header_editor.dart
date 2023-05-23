import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../../../r.dart';
import 'vib_header_view_model.dart';

class VIBHeaderEditInfoView extends StatefulWidget {
  VibHeaderViewRenderObject model;
  VIBHeaderEditInfoView({required this.model});

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
        },
      ),
      PairKeyValueWidget(
        fieldName: "left",
        value: model.attribute.layout.left.toString(),
        valueChanged: (newValue) {
          model.attribute.layout.left = newValue;
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
        },
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("Layout"),
        Column(
          children: propertiesWidgets(),
        )
      ]),
    );
  }
}

class PairKeyValueWidget extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Function(double) valueChanged;

  String fieldName;
  String value;
  PairKeyValueWidget(
      {required this.fieldName,
      required this.value,
      required this.valueChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(width: 200, child: Text(fieldName)),
          Container(
            width: 200,
            child: TextField(
              onSubmitted: (value) {
                double doubleValue = double.parse(value);
                valueChanged(doubleValue);
              },
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
