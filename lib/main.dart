import 'package:flutter/material.dart';


import 'navbar.dart' as navBar;
import 'pages/mainPage.dart';
import 'pages/listPage.dart';

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
    ListPage(),
    MainPage(),
    MainPage()
  ];
  late Widget currentPage = screens[1];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(children: [Container(
          height: 80,
          color: Color.fromARGB(255, 37, 37, 37),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                  radius: 25,
                )
              ],
            ),
          )
        ),
        Expanded(child: currentPage)],),


    bottomNavigationBar: navBar.NavigationBar(refreshParent: refresh),
  );

  refresh(int currentIndex) {
    setState(() {
      currentPage = screens[currentIndex];
    });
  }
}

