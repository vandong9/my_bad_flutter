import 'dart:convert';

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
  String? background_color;
  VibHeaderViewLayout.fromJson(Map<String, dynamic> json) {
    background_color = json["background_color"];
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
