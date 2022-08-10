import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> tabs = [
    Container(child: Text("Tab 1\nddf")),
    Container(child: Text("Tab 2")),
    Container(child: Text("Tab 3"))
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Expanded(child: Text("data")),
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
            ),
          ),
        ]),
      ),
    );
  }
}
