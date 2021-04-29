import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: MyHomePage()),
    );

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber=Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
