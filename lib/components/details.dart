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
                  _displayPosition(context, position)
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
                  Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: ElevatedButton(
                          child: Text("Next"),
                          onPressed: () {
                            if (position == 0) {
                              Navigator.pushReplacementNamed(
                                  context, "/customize");
                            } else if (position == 1) {
                              Navigator.pushReplacementNamed(
                                  context, "/lets_go");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              primary: gBlackColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _displayPosition(context, int currentPos) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
          icon: Icon(Icons.circle,
              size: currentPos == 0 ? 14 : 10,
              color: currentPos == 0 ? Colors.red : Colors.black),
        ),
        SizedBox(
          width: 2,
        ),
        IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {},
          icon: Icon(Icons.circle,
              size: currentPos == 1 ? 14 : 10,
              color: currentPos == 1 ? Colors.blue : Colors.black26),
        ),
        SizedBox(
          width: 2,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.circle,
              size: currentPos == 2 ? 14 : 10,
              color: currentPos == 2 ? Colors.green : Colors.black26),
        )
      ],
    );
  }
}
