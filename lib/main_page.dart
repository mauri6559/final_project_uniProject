import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_project/search_file.dart';

import 'home_page.dart';
import 'my_page.dart';
import 'options_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    OptionsPage(),
    SearchPage(),
    MyPage()
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem( icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem( icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
          BottomNavigationBarItem( icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem( icon: Icon(Icons.person), label: "Options")
        ],
      ),
    );
  }
}
