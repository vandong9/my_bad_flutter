import 'dart:convert';

import 'package:flutter/material.dart';

class VIBHeaderView extends StatelessWidget {
  final String leftIconName = "";

  void loadJson() {
    String json = _jsonexport;
    JSON jsonOBject = JSON.parse(json);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.all(8),
            child: Icon(Icons.abc_outlined),
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
