import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/theme/theme.dart';

import 'account_list_view_model.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';
import 'package:product/router.dart' as productRouters;

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
    return SafeArea(
      child: Column(
        children: [
          Text(
            "AccountListScreen",
            style: TextStyle(color: text1),
          ),
          TextButton(
            onPressed: () {
              String productList = productRouters.Page.productList.pageName();
              Navigator.of(context).pushNamed(productList);
              // NavigateUtil.openPage(context, "/product/productList");
            },
            child: const Text("Show Product"),
          )
        ],
      ),
    );
  }
}
