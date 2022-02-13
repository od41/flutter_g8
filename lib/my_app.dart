import 'package:flutter/material.dart';
import 'package:flutter_g8/screens/welcome_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'BeFit',
      theme: ThemeData(
          // primarySwatch: Colors.green,
          ),
      home: const WelcomePage(),
    );
  }
}
