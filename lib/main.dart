import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
            child: Text('Ask Me Anything'),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  @override
  _BallState createState() => _BallState();
  }

class _BallState extends State<Ball>{

  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: FlatButton(onPressed: () {
        setState(() {
          ballnumber = Random().nextInt(4)+1;
        });
        print('I got clicked');

      }, child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}



