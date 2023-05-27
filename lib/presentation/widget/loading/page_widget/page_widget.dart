import 'package:flutter/material.dart';
import 'package:my_bad/data/model/render_object/render_object_config.dart';
import 'package:my_bad/presentation/widget/loading/page_widget/page_model.dart';

import '../header/vib_header.dart';
import '../header/vib_header_view_model.dart';

class PageRenderWidget extends StatefulWidget {
  PageModel pageModel;

  PageRenderWidget({super.key, required this.pageModel});

  @override
  State<StatefulWidget> createState() => PageRenderWidgetState();
}

class PageRenderWidgetState extends State<PageRenderWidget> {
  Color backgroundColor = Colors.black12;

  List<Widget> getChildren() {
    List<Widget> childrenWidgets = [];
    for (var element in widget.pageModel.children) {
      String type = element["type"];
      if (type == "header_view") {
        VibHeaderViewRenderObject model =
            VibHeaderViewRenderObject.fromJson(element);
        childrenWidgets
            .add(VIBHeaderView(key: ValueKey(model.objectID), model: model));
      }
    }
    return childrenWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mapVIbColorName[widget.pageModel.backgroundColor],
      child: Container(
          child: Column(
        children: getChildren(),
      )),
    );
  }
}
