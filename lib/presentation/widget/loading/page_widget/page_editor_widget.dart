import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/page_widget/page_model.dart';

import '../header/vib_header_view_model.dart';
import '../pick_color_button/pick_color_button_widget.dart';

class PageEditorWidget extends StatefulWidget {
  PageModel model;
  Function onChanged;
  PageEditorWidget({super.key, required this.model, required this.onChanged});

  @override
  State<StatefulWidget> createState() => PageEditorWidgetState();
}

class PageEditorWidgetState extends State<PageEditorWidget> {
  List<Widget> childrenWidget() {
    List<Widget> widgets = [];
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text("Background-color"),
              PickColorButtonWidget(
                initValue: widget.model.backgroundColorName,
                onSelected: (newColor) {
                  widget.model.backgroundColorName = newColor;
                  widget.onChanged();
                },
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    widget.model
                        .addChild(VibHeaderViewRenderObject().basicInstance());
                    widget.onChanged();
                  },
                  child: Text("Add header")),
            ],
          )
        ],
      ),
    );
  }
}
