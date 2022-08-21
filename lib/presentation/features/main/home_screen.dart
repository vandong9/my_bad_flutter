import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_bad/common/extension/string_extension.dart';
import 'package:my_bad/common/theme/theme_manager.dart';
import 'package:my_bad/di/injector.dart';

import '../setting/setting.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  ThemeManager themeManager = sl<ThemeManager>();

  List<Widget> tabs = [
    Container(child: Text("tab_home".localized())),
    Container(child: Text("tab_payment".localized())),
    Container(child: Text("t_fb_authen_code_invalid".tr()))
  ];
  List<Widget> getTabs() {
    return [
      Container(child: Text("tab_home".localized())),
      Container(child: Text("tab_payment".localized())),
      Container(child: Text("t_fb_authen_code_invalid".tr()))
    ];
  }

  List<Widget> tabContents = [];
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
    tabContents = [
      Container(child: Text("Tab 1")),
      Container(child: Text("Tab 2")),
      SettingScreen()
      // SettingScreen()
    ];
  }

  Widget _contentAtIndex(int index) {
    return tabContents[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Expanded(child: _contentAtIndex(selectedIndex)),
          Text("t_fb_authen_code_invalid".tr(),
              style:
                  TextStyle(color: themeManager.current.color.transparent())),
          Container(
            height: 60,
            child: TabBar(
              tabs: getTabs(),
              controller: _tabController,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  const TextStyle(fontStyle: FontStyle.italic),
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}
