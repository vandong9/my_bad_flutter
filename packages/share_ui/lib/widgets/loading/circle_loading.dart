import 'package:flutter/material.dart';
import 'package:share_ui/share_ui.dart';

class CircleLoading extends StatelessWidget {
  const CircleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme =
        InheritedAppThemeProvider.of(context)?.appTheme ?? FireTheme();

    return Center(
      child: SizedBox(
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
