import 'package:flutter/material.dart';
import 'package:flutter_g8/components/background.dart';
import 'package:flutter_g8/components/details.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BeFit",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
            height: 0.9,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Details(
              heading: "Login!",
              body:
                  "Explore the all new way to build your fitness & find the perfect fit for you.",
              position: 0)
        ],
      )),
    );
  }
}
