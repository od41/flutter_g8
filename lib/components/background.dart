import 'package:flutter/material.dart';
import 'package:flutter_g8/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String image;

  const Background({Key? key, required this.child, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: gPrimaryColor1,
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.contain,
            alignment: Alignment.topLeft),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Text(
          //   "Be Fit",
          //   style: TextStyle(color: Colors.red, fontSize: 35),
          // ),
          child,
        ],
      ),
    );
  }
}
