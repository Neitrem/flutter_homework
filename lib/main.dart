import 'package:flutter/material.dart';


import 'navbar.dart' as navBar;
import 'pages/mainPage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true
      ),
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScreenState();
}
 
class ScreenState extends State<Screen> {
  final screens = [
    MainPage(),
    Center(child: Text('Home'),),
    MainPage()
  ];
  late Widget currentPage = screens[1];
  

  @override
  Widget build(BuildContext context) => Scaffold(
    body: currentPage,
    bottomNavigationBar: navBar.NavigationBar(refreshParent: refresh),
  );

  refresh(int currentIndex) {
    setState(() {
      currentPage = screens[currentIndex];
    });
  }
}

