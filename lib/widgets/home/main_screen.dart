import 'package:flutter/material.dart';
import 'package:infinitybinge/style/style.dart';
import 'package:infinitybinge/widgets/home/explore/explore_widget.dart';
import 'package:infinitybinge/widgets/home/watchlist_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static const List<Widget> _screenWidgets = [
    ExploreWidget(),
    // Text(""),
    WatchListWidget(),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;

    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IBStyle.bgColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: onSelectedTab,
        backgroundColor: IBStyle.bgColor,
        selectedItemColor: IBStyle.textColorMain,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        iconSize: 30,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedIconTheme: const IconThemeData(
          color: IBStyle.textColorLogo,
        ),
        unselectedItemColor: IBStyle.textColorSnd,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // activeIcon: Icon(Icons.search), //bold might be here
            label: "Explore",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.turned_in_not),
              activeIcon: Icon(Icons.turned_in),
              label: "Watchlist"),
        ],
      ),
      body: SafeArea(child: _screenWidgets[_selectedTab]),
    );
  }
}
