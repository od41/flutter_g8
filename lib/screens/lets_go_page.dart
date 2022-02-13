import 'package:flutter/material.dart';
import 'package:flutter_g8/components/background.dart';
import 'package:flutter_g8/components/details.dart';

class LetsGoPage extends StatelessWidget {
  const LetsGoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      // appBar: AppBar(
      //   title: const Text(
      //     "BeFit",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 24,
      //       color: Colors.white,
      //       height: 0.9,
      //     ),
      //   ),
      //   backgroundColor: Colors.purple,
      // ),
=======
>>>>>>> a75d71f3981e9dc6a208fbfc8622999889f37ad0
      body: Background(
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
