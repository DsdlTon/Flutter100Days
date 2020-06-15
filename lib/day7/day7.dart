import 'package:flutter/material.dart';
import 'package:flutter100day/day7/AnimateButton.dart';
// import 'package:flutter100day/day7/AnimateButton.dart';

class AnimationButton extends StatefulWidget {
  @override
  _AnimationButtonState createState() => _AnimationButtonState();
}

class _AnimationButtonState extends State<AnimationButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimateButton(primaryColor: Colors.blue, darkPrimayColor: Colors.blue[600]),
            SizedBox(height: 15.0),
            AnimateButton(primaryColor: Colors.yellow, darkPrimayColor: Colors.yellow[600]),
            SizedBox(height: 15.0),
            AnimateButton(primaryColor: Colors.green, darkPrimayColor: Colors.green[600]),
            SizedBox(height: 15.0),
            AnimateButton(primaryColor: Colors.red, darkPrimayColor: Colors.red[600]),
            // SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
