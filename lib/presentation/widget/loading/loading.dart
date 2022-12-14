import 'package:flutter/material.dart';
import 'package:my_bad/di/injector.dart';
import 'package:share_ui/theme/theme.dart';

class Loading extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Loading({this.disableClick = true});

  final bool disableClick;

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = sl<AppTheme>();

    return AbsorbPointer(
      absorbing: disableClick,
      child: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(appTheme.color.grey900)),
      ),
    );
  }
}
