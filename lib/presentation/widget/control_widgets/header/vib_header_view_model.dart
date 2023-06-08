import 'dart:convert';

import 'package:uuid/uuid.dart';

import '../../../../data/model/render_object/base_render_object.dart';
import '../../../../data/model/render_object/render_object_config.dart';

class VibHeaderViewRenderObject extends BaseViewRenderObject {
  String native_control = "";
  String variable_name = "";

  late VibHeaderViewAttribute attribute;

  VibHeaderViewRenderObject();
  VibHeaderViewRenderObject.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    objectID = json["id"];
    attribute = VibHeaderViewAttribute.fromJson(json["attribute"]);
  }

  static VibHeaderViewRenderObject mockObject() {
    Map<String, dynamic> json = jsonDecode(jsonBasicInfo);
    return VibHeaderViewRenderObject.fromJson(json);
  }

  @override
  BaseViewRenderObject basicInstance() {
    Map<String, dynamic> json = jsonDecode(jsonBasicInfo);
    json["id"] = const Uuid().v1();
    VibHeaderViewRenderObject model = VibHeaderViewRenderObject.fromJson(json);
    return model;
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json["id"] = objectID;
    return json;
  }
}

class VibHeaderViewAttribute {
  late VibHeaderViewLayout layout;
  late VibHeaderProperties properties;

  VibHeaderViewAttribute.fromJson(Map<String, dynamic> json) {
    layout = VibHeaderViewLayout.fromJson(json["layout"]);
    properties = VibHeaderProperties.fromJson(json["properties"]);
  }
}

class VibHeaderViewLayout {
  double? top;
  double? left;
  double? right;
  double? height;
  String? backgroundColorName;

  VibHeaderViewLayout.fromJson(Map<String, dynamic> json) {
    backgroundColorName = json["background_color"];
    top = json["top"];
    left = json["left"];
    right = json["right"];
    height = json["height"];
  }
}

class VibHeaderProperties {
  String title = "";
  String? leftIcon;
  String? rightIcon;

  VibHeaderProperties.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    leftIcon = json["left_icon"];
    rightIcon = json["right_icon"];
  }
}

const String jsonBasicInfo = """
{  
    "id" : "123456",
    "type": "header_view",
    "name" : "headerView",    
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
            "title":"Mở tài khoản",
            "left_icon": "arrow_left",
            "right_icon": "close",
            "left_click": ""
        }
    }
}
""";

String json = """
    [{
      "name": "Text",
      "type": "string",
      "value": "",
      "default": ""
    },]
""";

class VisualValueField {
  late String fieldName;
  late String readableName;
  late DataType type;
  late dynamic value;
  late String defaultValue;

  VisualValueField.fromJson(Map<String, dynamic> json) {
    fieldName = json["name"];
    readableName = json["read_name"];
    String typeName = json["type"];
    type = CatExtension.fromStringType(typeName);
    defaultValue = json["default"];
  }
}

enum DataType {
  unknown,
  string,
  numInt,
  numFloat,
  numDouble,
  boolean,
  color,
  image,
  custom
}

extension CatExtension on DataType {
  static DataType fromStringType(String typeName) {
    switch (typeName) {
      case "string":
        return DataType.string;
      case "int":
        return DataType.numInt;
      case "float":
        return DataType.numFloat;
      case "double":
        return DataType.numDouble;
      case "bool":
        return DataType.boolean;
      case "color":
        return DataType.color;
      case "image":
        return DataType.image;
      case "custom":
        return DataType.custom;
    }

    return DataType.unknown;
  }
}