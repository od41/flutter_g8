import 'package:flutter/material.dart';
import 'package:flutter_g8/components/rounded_button.dart';

class Details extends StatelessWidget {
  String heading;
  String body;
  int position;

  Details({ 
    Key? key,
    required this.heading,
    required this.body,
    required this.position,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      // alignment: Alignment.bottomCenter,
      color: Colors.white,
      child: Positioned(
        child: Column(
          children: [
            Text(
              heading,
              style: TextStyle(color: Colors.black54)
            ),
            Text(
              body,
              style: TextStyle(color: Colors.black54)
            ),
            Row(children: [
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.red
                )
            ],),

            Row(children: [
              Text(
                "Skip",
                style: TextStyle()
              ), 
              RoundedButton(
                text: "Next", 
                press: () {}
              )
            ],)
          ],),
      ),
    );
  }

  Widget _displayPosition(int currentPos) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: currentPos == 0  ? Colors.red : Colors.black
        ),
        Icon(
          Icons.circle,
          size: 10,
          color: currentPos == 1  ? Colors.red : Colors.black
        ),
        Icon(
          Icons.circle,
          size: 10,
          color: currentPos == 2  ? Colors.red : Colors.black
        ),
      ],
    );
  }
  
}