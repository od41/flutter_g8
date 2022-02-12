import 'package:flutter/material.dart';
import 'package:flutter_g8/constants.dart';
import 'package:flutter_g8/screens/customize_page.dart';
import 'package:flutter_g8/screens/lets_go_page.dart';


class SkipButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const SkipButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = gWhiteColor,
    this.textColor = Colors.black45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: skipButton(context),
      ),
    );
  }



  Widget skipButton(var context) {
    return ElevatedButton(
      child:
      Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LetsGoPage()),
        );
      },
      // onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.w500)),
    );
  }


}


