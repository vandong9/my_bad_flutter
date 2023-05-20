import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../../../r.dart';

class VIBHeaderView extends StatelessWidget {
  String title = "Mở tài khoản";
  String leftIconName = R.controlsImages.cmBackIcImages.cmBackIc;
  String rightIconName =
      R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc;

  Color backgroundColor = Color.fromRGBO(0, 0, 0, 0);
  void loadJson() {
    String json = _jsonexport;
    Map<String, dynamic> jsonOBject = jsonDecode(json);
    leftIconName = jsonOBject[""];
  }

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;

    return Container(
      color: backgroundColor,
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset(leftIconName),
          ),
          Text(
            title,
            style: currentTheme.textStyle.headline(currentTheme.color.grey900),
          ),
          Container(
            width: 30,
            height: 30,
            child: Image.asset(rightIconName),
          )
        ],
      ),
    );
  }
}

final String _jsonexport = """
{
    "native_control": "VIBHeaderView",
    "attribute": {
        "layout": {
            "top": "0_<relevant>", 
            "left": "0_",
            "right": "0_",
            "height": "50/",
            "background_color": ""
        },
        "properties": {
            "title":"",
            "left_icon": "back",
            "right_icon": "x",
            "left_click": ""
        }
    },

    "name": "headerView"

}
""";
