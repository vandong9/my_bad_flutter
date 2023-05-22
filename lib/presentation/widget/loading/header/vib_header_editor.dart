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
          fieldName: "top", value: model.attribute.layout.top.toString()),
      PairKeyValueWidget(
          fieldName: "left", value: model.attribute.layout.left.toString()),
      PairKeyValueWidget(
          fieldName: "right", value: model.attribute.layout.right.toString()),
      PairKeyValueWidget(
          fieldName: "height", value: model.attribute.layout.height.toString())
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
  TextEditingController mycontroller = TextEditingController();

  String fieldName;
  String value;
  PairKeyValueWidget({required this.fieldName, required this.value});

  @override
  Widget build(BuildContext context) {
    mycontroller.text = value;
    return Container(
      child: Row(
        children: [
          Container(width: 200, child: Text(fieldName)),
          Container(
            width: 200,
            child: TextField(
              onChanged: (e) {
                mycontroller.text = e;
              },
              controller: mycontroller,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
