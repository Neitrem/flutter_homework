import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  //final Function(int) refreshParent;
  MainPage({super.key});
  
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  //final Function(int) refreshParent;

  MainPageState({Key ? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image(image: AssetImage('assets/music_images/1.jpg'))
        ],
      ),
    );
  }
}