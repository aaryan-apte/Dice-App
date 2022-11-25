// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.red[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice_no = 1;
  int rightdice_no = 3;

  void randomizer() {
    leftdice_no = Random().nextInt(6) + 1;
    rightdice_no = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    randomizer();
                  });
                },
                child: Image.asset('assets/images/dice$leftdice_no.png'),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  randomizer();
                });
              },
              child: Image.asset('assets/images/dice$rightdice_no.png'),
            ),
          )),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {

//   int leftdice_no = 1;
//   int rightdice_no = 3;

//   @override
  
// }

// width: MediaQuery.of(context).size.width / 2.0,
