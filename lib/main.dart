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
        backgroundColor: Colors.lightBlue,
        title: Text('Ask me question'),
      ),
      body: EightBall(),
    );
  }
}


class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5)+1;
                print('ballNumber $ballNumber');
              });
            }, child: Image.asset('images/ball$ballNumber.png'),),
          )
        ],
      ),
    );
  }
}
