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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceImageNumber = 1;
  int leftDiceImageNumber = 1;

  int diceImageNumber(maxNumber) {
    return Random().nextInt(maxNumber) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceImageNumber = diceImageNumber(6);
                    leftDiceImageNumber = diceImageNumber(6);
                  });
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      child:
                          Image.asset('images/dice$rightDiceImageNumber.png'),
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                    )),
                    Expanded(
                        child: Padding(
                      child: Image.asset('images/dice$leftDiceImageNumber.png'),
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                    ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
