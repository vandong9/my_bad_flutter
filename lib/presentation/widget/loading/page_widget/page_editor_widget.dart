import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/page_widget/page_model.dart';

import '../pick_color_button/pick_color_button_widget.dart';

class PageEditorWidget extends StatefulWidget {
  PageModel model;
  Function onChanged;
  PageEditorWidget({super.key, required this.model, required this.onChanged});

  @override
  State<StatefulWidget> createState() => PageEditorWidgetState();
}

class PageEditorWidgetState extends State<PageEditorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PickColorButtonWidget(
            initValue: widget.model.backgroundColorName,
            onSelected: (newColor) {
              widget.model.backgroundColorName = newColor;
              widget.onChanged();
            },
          )
        ],
      ),
    );
  }
}
