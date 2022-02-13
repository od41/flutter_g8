import 'package:flutter/material.dart';
import 'package:flutter_g8/screens/customize_page.dart';
import 'package:flutter_g8/screens/lets_go_page.dart';
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
      initialRoute: '/',
      routes: {
        "/": (context) => WelcomePage(),
        "/customize": (context) => CustomizePage(),
        "/lets_go": (context) => LetsGoPage(),
      },
    );
  }
}
