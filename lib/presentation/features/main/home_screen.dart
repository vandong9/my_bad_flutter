import 'package:flutter/material.dart';
import 'package:my_bad/common/extension/string_extension.dart';

import '../setting/setting.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> tabs = [
    Container(child: Text("Tab 1")),
    Container(child: Text("Tab 2")),
    Container(child: Text("Setting".localized()))
  ];

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
          Container(
            height: 60,
            child: TabBar(
              tabs: tabs,
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
