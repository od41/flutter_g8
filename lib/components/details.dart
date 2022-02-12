import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_g8/components/rounded_button.dart';
import 'package:flutter_g8/components/skip.dart';
import 'package:flutter_g8/screens/lets_go_page.dart';

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

      // height: MediaQuery.of(context).size.height * 0.49,
      // height: size.height * .6,
      // alignment: Alignment.bottomCenter,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),

      child: Positioned(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: Text(
                heading,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Text(
                body,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.red
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LetsGoPage()
                      ),
                    );
                  }
                ),

                RoundedButton(
                  text: "Next",
                  press: () {},
                  color: Colors.transparent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _displayPosition(int currentPos) {
    return Row(
      children: [
        Icon(Icons.circle,
            size: 10, color: currentPos == 0 ? Colors.red : Colors.black),
        Icon(Icons.circle,
            size: 10, color: currentPos == 1 ? Colors.blue : Colors.black),
        Icon(Icons.circle,
            size: 10, color: currentPos == 2 ? Colors.green : Colors.black),
      ],
    );
  }
}
