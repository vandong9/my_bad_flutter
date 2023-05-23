import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/header/vib_header.dart';
import 'package:my_bad/presentation/widget/loading/simulator/page_model.dart';
import 'package:my_bad/presentation/widget/loading/status_bar/status_bard.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../header/vib_header_view_model.dart';

class SimulatorWidget extends StatefulWidget {
  PageModel pageModel;
  SimulatorWidget({required this.pageModel});

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
    pageModel.children.forEach((element) {
      String type = element["type"];
      if (type == "header_view") {
        VibHeaderViewRenderObject model =
            VibHeaderViewRenderObject.fromJson(element);
        childrenWidgets.add(VIBHeaderView(model: model));
      }
    });

    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(16),
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(38))),
        child: Column(children: [
          StatusBardWidget(),
          Column(
            children: childrenWidgets,
          )
        ]),
      ),
    );
  }
}
