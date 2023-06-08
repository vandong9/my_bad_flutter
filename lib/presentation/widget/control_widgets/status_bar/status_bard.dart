import 'package:flutter/material.dart';

import '../../../../r.dart';
import 'package:share_ui/theme/theme.dart';

class StatusBardWidget extends StatelessWidget {
  const StatusBardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;

    return Container(
      padding: const EdgeInsets.only(left: 21, right: 21),
      height: 44,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "9:41",
              style: currentTheme.textStyle
                  .subheadline(currentTheme.color.blackColor),
            ),
            Row(
              children: [
                Image.asset(
                  R.controlsImages.cm4GIc,
                  height: 11,
                  width: 17,
                ),
                Container(
                  width: 5,
                ),
                Image.asset(
                  R.controlsImages.cmWifiIc,
                  height: 11,
                  width: 15,
                ),
                Container(
                  width: 5,
                ),
                Image.asset(
                  R.controlsImages.cmBatteryIc,
                  height: 10,
                  width: 24,
                )
              ],
            )
          ]),
    );
  }
}
