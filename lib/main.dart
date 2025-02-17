import 'package:flutter/material.dart';

void main() {
  runApp(Applicaton());
}

class Applicaton extends StatelessWidget {
  const Applicaton({super.key});

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }
}

Widget getApplication() {
  return MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.amber,
    body: SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/drum.png'),
          fit: BoxFit.fitWidth,
        )),
        child: Center(
          child: TextButton(
            onPressed: () {
              print('abood');
            },
            child: Text(''),
          ),
        ),
      ),
    ),
  ));
}
