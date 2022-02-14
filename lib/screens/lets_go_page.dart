import 'package:flutter/material.dart';
import 'package:flutter_g8/components/background.dart';
import 'package:flutter_g8/components/details.dart';

class LetsGoPage extends StatelessWidget {
  const LetsGoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          image: "assets/images/fitness.jpg",
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Details(
                  heading: "Let's Go..",
                  body:
                      "Get the new fitness updates everyday & improve performance.",
                  position: 2)
            ],
          )),
    );
  }
}
