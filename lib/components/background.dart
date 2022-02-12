import 'package:flutter/material.dart';
import 'package:flutter_g8/constants.dart';

class Background extends StatelessWidget {
  final Widget child;

  Background({
    Key? key, 
    required this.child
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: gPrimaryColor1,
            image: DecorationImage(
          image: AssetImage(
            "assets/images/astro.png",
          ),
          fit: BoxFit.cover,
        )),
      child: Stack(
        alignment: Alignment.center,

        children: <Widget>[

          child,
        ],
      ),
    );
  }
}
