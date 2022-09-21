import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/theme/theme.dart';

import 'account_list_view_model.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';

class AccountListScreen extends BaseMVVMScreen {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountListScreenState();
}

class AccountListScreenState
    extends BaseMVVMState<AccountListScreen, AccountListViewModel> {
  AccountListScreenState() : super(AccountListViewModel());

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(viewmodel.getStringSample());
    }
    InheritedAppThemeProvider? themeProvider =
        InheritedAppThemeProvider.of(context);
    Color? text1 = themeProvider != null
        ? themeProvider.appTheme.color.darkThemeColor
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
