import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  //final Function(int) refreshParent;
  ListPage({super.key});
  
  @override
  State<StatefulWidget> createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  
  final List<String> settings = <String>[
    'Настройки чата',
    'Конфиденциальность',
    'Уведомления',
    'Данные и память',
    'Энергосбережение',
    'Папки с чатами',
    'Устройства',
    'Язык'
  ];

  final List<Icon> sett_icon = <Icon>[
    Icon(Icons.message, color: Colors.white,),
    Icon(Icons.lock, color: Colors.white,),
    Icon(Icons.notifications, color: Colors.white),
    Icon(Icons.schema, color: Colors.white),
    Icon(Icons.battery_0_bar, color: Colors.white),
    Icon(Icons.file_present, color: Colors.white),
    Icon(Icons.devices_sharp, color: Colors.white),
    Icon(Icons.language, color: Colors.white),
  ];

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  ListPageState({Key ? key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ListView (
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(top: 5.0),
              color: Color.fromARGB(255, 160, 160, 160),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Настройки", style: TextStyle(color: Colors.amber),),
                ),
              ),
            ),
            Container(
              height: (settings.length) * (50.5),
              child: ListView.separated(
                padding: EdgeInsets.all(0.0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: settings.length,
                separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Color.fromARGB(255, 160, 160, 160),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20, right: 20), child: sett_icon[index]) ,
                        Text(settings[index], style: TextStyle(color: Colors.white, fontSize: 14))
                      ]
                    ),
                  ); 
                }
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: 50,
              color: Color.fromARGB(255, 160, 160, 160),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20, right: 20), child: Icon(Icons.star_border, color: Colors.purple,)) ,
                  Text("Mygram Premium", style: TextStyle(color: Colors.white, fontSize: 14))
                ]
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Color.fromARGB(255, 160, 160, 160),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Настройки", style: TextStyle(color: Colors.amber),),
                ),
              ),
            ),
            Container(
              height: (settings.length) * (50.5),
              child: ListView.separated(
                padding: EdgeInsets.all(0.0),
                physics: NeverScrollableScrollPhysics(),
                itemCount: settings.length,
                separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Color.fromARGB(255, 160, 160, 160),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20, right: 20), child: sett_icon[index]) ,
                        Text(settings[index], style: TextStyle(color: Colors.white, fontSize: 14))
                      ]
                    ),
                  ); 
                }
              ),
            ),
            
            
          ],
        )
      
      );
  }
}