import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  final Function(int) refreshParent;
  NavigationBar({super.key, required this.refreshParent});
  
  @override
  State<StatefulWidget> createState() => NavigationBarState(
    refreshParent: refreshParent
  );
}

class NavigationBarState extends State<NavigationBar> {
  int currentIndex = 1;
  final Function(int currentIndex) refreshParent;

  NavigationBarState({Key ?key, required this.refreshParent});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    currentIndex: currentIndex,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.amber,
    unselectedItemColor: Color.fromARGB(255, 37, 37, 37),
    showUnselectedLabels: false,
    iconSize: 30.0,
    selectedFontSize: 14.0,
    onTap: (index) => setState(() {
      currentIndex = index;
      refreshParent(currentIndex);
    }),
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      )
    ],
  );
  }
}
