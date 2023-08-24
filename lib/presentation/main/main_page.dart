import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:t_flight/core/colors.dart';
import 'package:t_flight/presentation/account/account_screen.dart';
import 'package:t_flight/presentation/home/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pages = [
    const HomePage(),
    const AccountScreen(),
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[index],
      bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: buttonbg,
          onTap: (p0) {
            setState(() {
              index = p0;
            });
          },
          currentIndex: index,
          items: [
            SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
            SalomonBottomBarItem(
                icon: Icon(Icons.person), title: Text('Account')),
          ]),
    );
  }
}
