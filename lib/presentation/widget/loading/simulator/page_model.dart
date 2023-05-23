import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../data/model/render_object/render_object_config.dart';

class PageModel {
  late String pageName;
  late Color backgroundColor;
  late List<dynamic> children;

  PageModel.fromJson(Map<String, dynamic> json) {
    pageName = json["page_name"];
    backgroundColor = mapVIbColorName[json["backgroundColor"]] ?? Colors.black;
    children = json["children"];
  }

  static PageModel mockObject() {
    Map<String, dynamic> json = jsonDecode(sampleJson);
    return PageModel.fromJson(json);
  }
}

String sampleJson = """
{
  "page_name": "intro",
  "background_color": "",
  "children": [
    {
      "id": "100000",
      "type": "header_view",
      "name": "headerView",
      "native_control": "VIBHeaderView",
      "attribute": {
        "layout": {
          "top": 0,
          "left": 0,
          "right": 0,
          "height": 50,
          "background_color": ""
        },
        "properties": {
          "title": "Mở tài khoản",
          "left_icon": "arrow_left",
          "right_icon": "close",
          "left_click": ""
        }
      }
    },
    {
      "id": "111111",
      "type": "header_view",
      "name": "headerView",
      "native_control": "VIBHeaderView",
      "attribute": {
        "layout": {
          "top": 0,
          "left": 0,
          "right": 0,
          "height": 50,
          "background_color": ""
        },
        "properties": {
          "title": "Mở tài khoản",
          "left_icon": "arrow_left",
          "right_icon": "close",
          "left_click": ""
        }
      }
    }
  ]
}

""";
