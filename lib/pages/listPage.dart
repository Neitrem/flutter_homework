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
    Icon(Icons.message),
    Icon(Icons.lock),
    Icon(Icons.notifications),
    Icon(Icons.schema),
    Icon(Icons.battery_0_bar),
    Icon(Icons.file_present),
    Icon(Icons.devices_sharp),
    Icon(Icons.language),
  ];

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  ListPageState({Key ? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column (
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.grey,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Настройки"),
              ),
            ),
          ),
          Expanded( child: ListView.builder(
            itemCount: settings.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber,
                child: Row(
                  
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0), child: sett_icon[index]) ,
                    Text(settings[index])
                  ]
                ),
              );
            }
          )
          )
        ],
      )
    
    );
  }
}