import 'package:flutter/material.dart';

class PageModel {
  late String pageName;
  late Color backgroundColor;
  late Map<String, dynamic> children;

  PageModel.fromJson(Map<String, dynamic> json) {
    pageName = json["page_name"];
    backgroundColor = json["backgroundColor"];
    children = json["children"];
  }
}

String sampleJson = """
{
  "page_name": "",
  "background_color": "",
  children: [
    {
  "id":"100000",
    "name": "headerView",
    "native_control": "VIBHeaderView",
    "attribute": {
        "layout": {
            "top": 0, 
            "left": 0,
            "right": 0,
            "height": 50.0,
            "background_color": ""
        },
        "properties": {
            "title":"Mở tài khoản",
            "left_icon": "arrow_left",
            "right_icon": "close",
            "left_click": ""
        }
    },
},
{
  "id":"111111",
    "name": "headerView",
    "native_control": "VIBHeaderView",
    "attribute": {
        "layout": {
            "top": 0, 
            "left": 0,
            "right": 0,
            "height": 50.0,
            "background_color": ""
        },
        "properties": {
            "title":"Mở tài khoản",
            "left_icon": "arrow_left",
            "right_icon": "close",
            "left_click": ""
        }
    },
}
  ]
}

""";
