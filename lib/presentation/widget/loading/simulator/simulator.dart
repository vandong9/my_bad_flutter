import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/header/vib_header.dart';
import 'package:my_bad/presentation/widget/loading/status_bar/status_bard.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

class SimulatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimulatorWidgetState();
  }
}

class _SimulatorWidgetState extends State<SimulatorWidget> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;
    backgroundColor = currentTheme.color.grey50;

    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(16),
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(38))),
        child: Column(children: [StatusBardWidget(), VIBHeaderView()]),
      ),
    );
  }
}
