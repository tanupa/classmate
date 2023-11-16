import 'package:classmate/app_icons.dart';
import 'package:flutter/material.dart';
import 'pages/courses_menu.dart';
import 'pages/calendar.dart';
import 'pages/tasks.dart';
import 'pages/mail.dart';
import 'pages/profile.dart';

/// Flutter code sample for [NavigationBar].

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color(0xFFB5E8FF),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(AppIcons.home),
            label: 'Courses',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.calendar),
            label: 'Calendar',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.clipboard),
            label: 'Tasks',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.mail_outline),
            label: 'Mail',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.user),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        CoursesMenu(),
        Calendar(),
        Tasks(),
        Mail(),
        Profile(),
      ][currentPageIndex],
    );
  }
}