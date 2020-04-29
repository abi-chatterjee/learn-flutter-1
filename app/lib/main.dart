import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('My Dice App')),
        backgroundColor: Colors.blue,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  void rollDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    Image leftDice = Image.asset('images/dice$leftDiceNumber.png');
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: leftDice,
            onPressed: () {
              print('Left button got pressed.');
              setState(() {
                rollDice();
              });
            },
          )),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print('Right button got pressed.');
                setState(() {
                  rollDice();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
