import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 6;
  int rightDiceValue = 6;

  rollDice() {
    setState(() {
      leftDiceValue = Random().nextInt(5) + 1;
      rightDiceValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceValue.png'),
              onPressed: rollDice,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceValue.png'),
              onPressed: rollDice,
            ),
          ),
        ],
      ),
    );
  }
}
