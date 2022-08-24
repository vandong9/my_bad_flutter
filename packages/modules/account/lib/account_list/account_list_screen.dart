import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share_ui/theme/theme.dart';

class AccountListScreen extends StatefulWidget {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountListScreenState();
}

class AccountListScreenState extends State<AccountListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Text(
      "AccountListScreen",
      style: TextStyle(color: Colors.red),
    ));
  }
}
