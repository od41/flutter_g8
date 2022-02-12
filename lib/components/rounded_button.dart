import 'package:flutter/material.dart';
import 'package:flutter_g8/constants.dart';
import 'package:flutter_g8/screens/customize_page.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = gPrimaryColor1,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: size.width * 0.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      // TODO: replace empty function with press variable
      onPressed: () {},
      // onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.w500)),
    );
  }

}
