import 'package:classmate/app_icons.dart';
import 'package:flutter/material.dart';
import 'pages/courses_menu.dart';
//import 'pages/calendar.dart';
//import 'pages/tasks.dart';
import 'pages/mail.dart';
import 'pages/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF38B3EA),
        unselectedItemColor: Color(0xFF484C52),
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            label: 'Courses',
          ),
          /*
          BottomNavigationBarItem(
            icon: Icon(AppIcons.calendar),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.clipboard),
            label: 'Tasks',
          ),
          */
          BottomNavigationBarItem(
            icon: Icon(AppIcons.mail_outline),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.user),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        CoursesMenu(),
        //Calendar(),
        //Tasks(),
        Mail(),
        Profile(),
      ][_selectedIndex],
    );
  }
}