import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/header/vib_header.dart';
import 'package:my_bad/presentation/widget/loading/page_widget/page_model.dart';
import 'package:my_bad/presentation/widget/loading/status_bar/status_bard.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../header/vib_header_view_model.dart';
import '../page_widget/page_widget.dart';

class SimulatorWidget extends StatefulWidget {
  PageModel pageModel;
  SimulatorWidget({super.key, required this.pageModel});

  @override
  State<StatefulWidget> createState() {
    return _SimulatorWidgetState(pageModel: pageModel);
  }
}

class _SimulatorWidgetState extends State<SimulatorWidget> {
  PageModel pageModel;
  _SimulatorWidgetState({required this.pageModel});

  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;
    backgroundColor = currentTheme.color.grey50;

    List<Widget> childrenWidgets = [];
    for (var element in pageModel.children) {
      String type = element["type"];
      if (type == "header_view") {
        VibHeaderViewRenderObject model =
            VibHeaderViewRenderObject.fromJson(element);
        childrenWidgets
            .add(VIBHeaderView(key: ValueKey(model.objectID), model: model));
      }
    }

    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(38))),
        child: Column(children: [
          const StatusBardWidget(),
          PageRenderWidget(
            pageModel: pageModel,
          )
        ]),
      ),
    );
  }
}
