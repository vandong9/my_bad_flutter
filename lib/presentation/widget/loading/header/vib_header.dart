import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../../../r.dart';
import 'vib_header_view_model.dart';

class VIBHeaderView extends StatelessWidget {
  VibHeaderViewRenderObject model;

  VIBHeaderView({required this.model});

  String title = "Mở tài khoản";
  String leftIconName = R.controlsImages.cmBackIcImages.cmBackIc;
  String rightIconName =
      R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc;

  Color backgroundColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;

    return Container(
      color: backgroundColor,
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset(leftIconName),
          ),
          Text(
            title,
            style: currentTheme.textStyle.headline(currentTheme.color.grey900),
          ),
          Container(
            width: 30,
            height: 30,
            child: Image.asset(rightIconName),
          )
        ],
      ),
    );
  }
}
