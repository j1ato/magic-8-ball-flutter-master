import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Magic8Ball(),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballImage = 1;

  @override
  Widget build(BuildContext context) {
    void changeBall() {
      setState(() {
        ballImage = Random().nextInt(6) + 1;
      });
    }

    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: const Text('ASK ME ANYTHING'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$ballImage.png'),
            onPressed: () => changeBall(),
          ),
        ),
      ]),
    );
  }
}
