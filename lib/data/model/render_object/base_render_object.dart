import 'package:my_bad/presentation/widget/loading/header/vib_header_view_model.dart';
import 'package:my_bad/presentation/widget/loading/page_widget/page_model.dart';

class BaseViewRenderObject {
  String objectID = "";
  String name = "";
  String type = "";
  ControlType controlType = ControlType.unknown;
  List<dynamic> children = [];
  List<BaseViewRenderObject> childrenNode = [];

  BaseViewRenderObject.fromJson(Map<String, dynamic> json) {
    objectID = json["id"];
    name = json["name"];
    type = json["type"];
    children = json["children"] ?? [];
    controlType = mapControlNameToType[type] ?? ControlType.unknown;

    children.forEach((element) {
      String type = element["type"];
      ControlType controlType =
          mapControlNameToType[type] ?? ControlType.unknown;
      switch (controlType) {
        case ControlType.unknown:
          break;
        case ControlType.page:
          childrenNode.add(PageModel.fromJson(element));
        case ControlType.headerView:
          childrenNode.add(VibHeaderViewRenderObject.fromJson(element));
      }
    });
  }
}

enum ControlType { unknown, page, headerView }

Map<String, ControlType> mapControlNameToType = {
  "page": ControlType.page,
  "header_view": ControlType.headerView
};
