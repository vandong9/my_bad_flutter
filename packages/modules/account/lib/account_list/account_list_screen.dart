import 'package:flutter/material.dart';
import 'package:share_ui/theme/theme.dart';

import 'account_list_view_model.dart';

abstract class BaseMVVMScreen extends StatefulWidget {
  const BaseMVVMScreen({super.key});
  @override
  State<StatefulWidget> createState();
}

abstract class BaseMVVMState<T extends BaseMVVMScreen> extends State<T> {
  BaseViewModel viewmodel;
  BaseMVVMState(this.viewmodel);
}

class AccountListScreen extends BaseMVVMScreen {
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
