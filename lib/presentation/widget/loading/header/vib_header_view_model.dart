import 'dart:convert';

import '../../../../data/model/render_object/render_object_config.dart';

class VibHeaderViewRenderObject {
  String native_control = "";
  String variable_name = "";

  late VibHeaderViewAttribute attribute;

  VibHeaderViewRenderObject.fromJson(Map<String, dynamic> json) {
    attribute = VibHeaderViewAttribute.fromJson(json["attribute"]);
  }

  static VibHeaderViewRenderObject mockObject() {
    Map<String, dynamic> json = jsonDecode(_jsonexport);
    return VibHeaderViewRenderObject.fromJson(json);
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
  int? top;
  int? left;
  int? right;
  double? height;
  String? background_color;

  VibHeaderViewLayout.fromJson(Map<String, dynamic> json) {
    background_color = json["background_color"];
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
    leftIcon = mapVibImageAsset[json["left_icon"]];
    rightIcon = mapVibImageAsset[json["right_icon"]];
  }
}

final String _jsonexport = """
{
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

    "name": "headerView"

}
""";
