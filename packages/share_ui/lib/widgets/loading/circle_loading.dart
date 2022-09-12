import 'package:flutter/material.dart';
import 'package:share_ui/share_ui.dart';
import 'package:share_ui/theme/font.dart';
import 'package:share_ui/theme/theme_manager.dart';

class CircleLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppTheme theme =
        InheritedAppThemeProvider.of(context)?.appTheme ?? FireTheme();

    return Center(
      child: Container(
        height: AppFontSize.sizeNormalxx,
        width: AppFontSize.sizeNormalxx,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(
            theme.color.grey100,
          ),
        ),
      ),
    );
  }
}
