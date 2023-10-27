import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  //final Function(int) refreshParent;
  PasswordPage({super.key});
  
  @override
  State<StatefulWidget> createState() => PasswordPageState();
}

class PasswordPageState extends State<PasswordPage> {
  //final Function(int) refreshParent;

  PasswordPageState({Key ? key});

  List<String> firstNumRow = <String>["1", "2", "3"];
  List<String> seconNumRow = <String>["4", "5", "6"];
  List<String> thirdNumRow = <String>["7", "8", "9"];

  int pinLength = 4;
  String pinEntered = "";

  numberClicked(String number) {
    setState(() {
      pinEntered = pinEntered + number;
      if(pinEntered.length == pinLength){
        Future.delayed(const Duration(milliseconds: 500), () {  
          pinEntered = "";
          setState(() {});
        });
      }
    });
    
  }

  delNum() {
    setState(() {
      if (pinEntered.length > 0) {
        pinEntered = pinEntered.substring(0, pinEntered.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  (pinEntered.length >= 1) ? Icon(Icons.circle) : Icon(Icons.circle_outlined, ),
                  (pinEntered.length >= 2) ? Icon(Icons.circle) : Icon(Icons.circle_outlined, ),
                  (pinEntered.length >= 3) ? Icon(Icons.circle) : Icon(Icons.circle_outlined, ),
                  (pinEntered.length >= 4) ? Icon(Icons.circle) : Icon(Icons.circle_outlined, ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: this.firstNumRow.map((e) => NumberButton(currentNum: e, click: numberClicked,)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: this.seconNumRow.map((e) => NumberButton(currentNum: e, click: numberClicked)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: this.thirdNumRow.map((e) => NumberButton(currentNum: e, click: numberClicked)).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed:() => {}, 
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        color: Colors.white,
                        child: Center(
                          child: Text("Выйти", style: TextStyle(fontSize: 12, letterSpacing: 0.1, color: Colors.black),),
                        ) 
                      )
                    ),
                    NumberButton(currentNum: "0", click: numberClicked),
                    TextButton(
                      onPressed:() => delNum(), 
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        color: Colors.white,
                        child: Center(
                          child: Icon(Icons.backspace, color: Colors.black,)
                        ) 
                      )
                    ),
                    
                  ]
                ),
                
              ],
            )
          )
        ],
      ),
    );
  }
}

class NumberButton extends StatefulWidget {
  
  NumberButton({super.key, required this.currentNum, required this.click});
  final String currentNum;
  final Function(String) click;
  
  @override
  State<StatefulWidget> createState() => NumberButtonState(
    currentNum: currentNum,
    click: click
  );
}


class NumberButtonState extends State<NumberButton> {
  NumberButtonState({Key ? key, required this.currentNum, required this.click});
  final String currentNum;
  final Function(String) click;
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:() => this.click(this.currentNum), 
      child: Container(
        width: 60.0,
        height: 60.0,
        color: Colors.white,
        child: Center(
          child: Text(this.currentNum, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),),
        ) 
      )
    );
  }
}