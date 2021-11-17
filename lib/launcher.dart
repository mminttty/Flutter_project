import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'Calendar.dart';
import 'Howareyou.dart';
import 'Notification.dart';
import 'profile.dart';
  
class Launcher extends StatefulWidget {
    static const routeName = '/';
 
    const Launcher({Key? key}) : super(key: key);
  
    @override
    State<StatefulWidget> createState() {
        return _LauncherState();
    }
}
  
class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  final List<Widget> _pageWidget = <Widget>[
    const Homepage(),
    const Calendar(),
    const Howareyou(),
    const Notifications(),
    const Profile(),
    //const Contact(),
  ];
  final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: Colors.blueAccent,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today_outlined),
      label: 'Calendar',
      
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_to_photos_outlined),
      label: 'How are you',
      backgroundColor: Colors.blueAccent,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.notification_important_outlined),
      label: 'Notification',
      backgroundColor: Colors.blueAccent,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_rounded),
      label: 'Profile',
      backgroundColor: Colors.blueAccent,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        
        onTap: _onItemTapped,
      ),
    );
  }
}