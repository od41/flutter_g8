import 'package:flutter/material.dart';
import 'package:flutter_g8/components/background.dart';

class LetsGoPage extends StatelessWidget {

  const LetsGoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Text('Lets go!'),
    );
  }
}