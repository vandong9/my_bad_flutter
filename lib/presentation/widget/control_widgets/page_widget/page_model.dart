import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../../data/model/render_object/base_render_object.dart';
import '../../../../data/model/render_object/render_object_config.dart';
import 'package:uuid/uuid.dart';

class PageModel extends BaseViewRenderObject {
  late String pageName;

  late String backgroundColorName;

  PageModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    pageName = json["page_name"];
    backgroundColorName = json["background_color"];
  }

  Color backgroundColor() {
    return mapVIbColorName[backgroundColorName] ?? Colors.white;
  }

  static PageModel mockObject() {
    Map<String, dynamic> json = jsonDecode(sampleJson);
    return PageModel.fromJson(json);
  }

  @override
  BaseViewRenderObject basicInstance() {
    Map<String, dynamic> json = jsonDecode(jsonBasicInfo);
    PageModel model = PageModel.fromJson(json);

    model.objectID = const Uuid().v1();
    return model;
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json["id"] = objectID;
    return json;
  }
}

String jsonBasicInfo = """
{
  "id": "1000FC4JC5FMAA1SBQZ9W8Y1JB95HFVARVT13DST063NYBP2YRDJKI",
  "type" : "page",
  "name": "Page intro",
  "page_name": "intro",
  "native_control": "BaseViewController",
  "background_color": "",
  "children": []
}

""";

String sampleJson = """
{
  "id": "1000FC4JC5FMAA1SBQZ9W8Y1JB95HFVARVT13DST063NYBP2YRDJKI",
  "type" : "page",
  "name": "Page intro",
  "page_name": "intro",
  "native_control": "BaseViewController",
  "background_color": "",
  "children": [
    {
      "id": "A98DB973KWL8XP1LZ94KJF0BMA5PEZ8C6490FWEI",
      "type": "header_view",
      "name": "headerView",
      "native_control": "VIBHeaderView",
      "attribute": {
        "layout": {
          "top": 0.0,
          "left": 0.0,
          "right": 0.0,
          "height": 50.0,
          "background_color": ""
        },
        "properties": {
          "title": "Mở tài khoản 1",
          "left_icon": "arrow_left",
          "right_icon": "close",
          "left_click": ""
        }
      }
    },
    {
      "id": "A98DB973KWL8XP1LZ94KJF0BMA5PEZ8C6490FWEI01QJMN32Y",
      "type": "header_view",
      "name": "headerView",
      "native_control": "VIBHeaderView",
      "attribute": {
        "layout": {
          "top": 0.0,
          "left": 0.0,
          "right": 0.0,
          "height": 100.0,
          "background_color": ""
        },
        "properties": {
          "title": "Mở tài khoản 2",
          "left_icon": "arrow_left",
          "right_icon": "close",
          "left_click": ""
        }
      }
    }
  ]
}

""";