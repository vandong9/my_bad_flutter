import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../../../r.dart';
import 'vib_header_view_model.dart';

class VIBHeaderView extends StatefulWidget {
  VibHeaderViewRenderObject model;
  VIBHeaderView({required this.model});

  Subject? onSelected;

  @override
  State<StatefulWidget> createState() {
    return VIBHeaderViewState(model: model);
  }
}

class VIBHeaderViewState extends State<VIBHeaderView> {
  VibHeaderViewRenderObject model;

  bool isSelected = true;

  VIBHeaderViewState({required this.model});

  String leftIconName = R.controlsImages.cmBackIcImages.cmBackIc;
  String rightIconName =
      R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc;

  Color backgroundColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;
    return Container(
      child: Stack(
        children: [
          Container(
            color: backgroundColor,
            padding: EdgeInsets.only(left: 18, right: 18),
            height: model.attribute.layout.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: (model.attribute.properties.leftIcon == null
                      ? Container()
                      : Image.asset(model.attribute.properties.leftIcon!)),
                ),
                Text(
                  model.attribute.properties.title,
                  style: currentTheme.textStyle
                      .headline(currentTheme.color.grey900),
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: (model.attribute.properties.rightIcon == null
                      ? Container()
                      : Image.asset(rightIconName)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              height: model.attribute.layout.height,
              decoration: isSelected
                  ? BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2))
                  : BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(0, 0, 0, 0), width: 2)),
            ),
          )
        ],
      ),
    );
  }
}

class VIBHeaderEditInfoView extends StatefulWidget {
  VibHeaderViewRenderObject model;
  VIBHeaderEditInfoView({required this.model});

  @override
  State<StatefulWidget> createState() {
    return VIBHeaderEditInfoViewState();
  }
}

class VIBHeaderEditInfoViewState extends State<VIBHeaderEditInfoView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: []),
    );
  }
}
