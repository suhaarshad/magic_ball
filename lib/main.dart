import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('Ask me Anything',
          style: TextStyle(color: Colors.white,
          fontSize: 28.0,letterSpacing: 1.5,
          ),),
          backgroundColor: Colors.grey[900],
        ),
        body: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}
class _BallState extends State<Ball> {

  int ballNumber = 1;

  void displayImage(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: (){
            displayImage();
            print(ballNumber);
          },
        ),

    );

  }
}

