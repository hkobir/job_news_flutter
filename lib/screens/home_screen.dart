import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_prack/widgets/home_tab.dart';
import 'package:flutter_ui_prack/widgets/job_post_tab.dart';
import 'package:flutter_ui_prack/widgets/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
      BottomNavigationBarItem(
          icon: Icon(Icons.hot_tub), title: Text("Hot jobs")),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_pin), title: Text("Profile")),
    ];

    final _tabPages = <Widget>[
      HomeTab(),
      JobPost(),
      ProfileTab(),
    ];

    assert(_tabPages.length == _items.length);
    final bottomNavBar = BottomNavigationBar(
        items: _items,
        selectedItemColor: Colors.indigo,
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        });

    return Scaffold(
      body: _tabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
