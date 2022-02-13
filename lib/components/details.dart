import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_g8/components/rounded_button.dart';
import 'package:flutter_g8/components/skip.dart';
import 'package:flutter_g8/screens/lets_go_page.dart';
import 'package:flutter_g8/screens/customize_page.dart';
import 'package:flutter_g8/constants.dart';

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
              padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
              child: Text(
                heading,
                style: TextStyle(
                  color: gBlackColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Text(
                body,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _displayPosition(position)
                  // _indicator(true)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 20, color: Colors.black45),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      }),
                  RoundedButton(
                    text: "Next",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomizePage()));
                    },
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayPosition(int currentPos) {
    return Row(
      children: [
        Icon(Icons.circle,
            size: currentPos == 0 ? 14 : 10,
            color: currentPos == 0 ? Colors.red : Colors.black),
        SizedBox(
          width: 2,
        ),
        Icon(Icons.circle,
            size: currentPos == 1 ? 14 : 10,
            color: currentPos == 1 ? Colors.blue : Colors.black26),
        SizedBox(
          width: 2,
        ),
        Icon(Icons.circle,
            size: currentPos == 2 ? 14 : 10,
            color: currentPos == 2 ? Colors.green : Colors.black26),
      ],
    );
  }
}
