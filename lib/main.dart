import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 3;
  int rightdicenumber = 1;

  void changedice() {
    print('Left Button Pressed=, Right Button Pressed');
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
    print(
        'leftdicenumber= $leftdicenumber, rightbuttonpressed = $rightdicenumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
// flex: 1,
              child: TextButton(
            onPressed: () {
              setState(() {
                changedice();
              });
            },
            child: Image.asset('images/dice$leftdicenumber.png'),
          )),
          Expanded(
// flex: 2,
              child: TextButton(
            onPressed: () {
              setState(() {
                changedice();
              });
            },
            child: Image.asset('images/dice$rightdicenumber.png'),
          )),
        ],
      ),
    );
  }
}
