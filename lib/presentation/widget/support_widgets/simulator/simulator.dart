import 'package:flutter/material.dart';
import 'package:my_bad/data/model/render_object/base_render_object.dart';
import 'package:my_bad/presentation/widget/control_widgets/header/vib_header.dart';
import 'package:my_bad/presentation/widget/control_widgets/page_widget/page_model.dart';
import 'package:my_bad/presentation/widget/control_widgets/status_bar/status_bard.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../control_widgets/header/vib_header_view_model.dart';
import '../../control_widgets/page_widget/page_widget.dart';

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
