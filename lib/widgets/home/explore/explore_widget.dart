import 'package:flutter/material.dart';
import 'package:infinitybinge/style/style.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({super.key});

  @override
  State<ExploreWidget> createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  int _selectedTab = 0;

  static const List<Tab> _tabs = <Tab>[
    Tab(
      text: "Discover",
    ),
    Tab(
      text: "Movies",
    ),
    Tab(
      text: "TV Shows",
    ),
  ];

  static final List<Widget> _tabsWidgets = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;

    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search,
                  color: IBStyle.textColorSnd,
                ),
                hintStyle: const TextStyle(
                  color: IBStyle.textColorSnd,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9999),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: IBStyle.bgColorSearch),
          ),
          bottom: const TabBar(tabs: _tabs),
          backgroundColor: IBStyle.bgColor,
        ),
        body: TabBarView(
          children: _tabsWidgets,
        ),
      ),
    );
  }
}
