import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('This is the left button.');
              },
              child: Image.asset(
                'images/dice1.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('This is the right button.');
              },
              child: Image.asset(
                'images/dice2.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
