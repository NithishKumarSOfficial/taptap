import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body:Column(
        children: <Widget>[
          Text(
              'PRESS THE BUTTON',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),


          ),
          Ball(),
        ],
      )
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
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber=Random().nextInt(5)+1;
          });

          print('ballNumber=$ballNumber');
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
