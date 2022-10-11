import 'package:flutter/material.dart';
import 'package:water_monitoring_app/screen/dashboard.dart';
import 'package:water_monitoring_app/screen/graphical_overview.dart';
import 'package:water_monitoring_app/screen/settings.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Dashboard(),
    GraphicalOverview(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Center(
            child: Text(
              'Water Monitor',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              ),
              Positioned(
                bottom: 35.0,
                left: 26.0,
                child: Icon(
                  Icons.brightness_1,
                  color: Colors.red,
                  size: 9.0,
                ),
              )
            ],
          ),
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Graph',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
