import 'package:flutter/material.dart';
import 'package:share_ui/theme/theme.dart';

class AccountListScreen extends StatefulWidget {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountListScreenState();
}

class AccountListScreenState extends State<AccountListScreen> {
  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider? themeProvider =
        InheritedAppThemeProvider.of(context);
    Color? text1 = themeProvider != null
        ? themeProvider.appTheme.color.grey900
        : Colors.red;
    return Column(
      children: [
        Text(
          "AccountListScreen",
          style: TextStyle(color: text1),
        ),
      ],
    );
  }
}
