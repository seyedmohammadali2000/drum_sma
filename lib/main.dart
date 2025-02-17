import 'package:flutter/material.dart';

void main() {
  runApp(Applicaton());
}

class Applicaton extends StatelessWidget {
  const Applicaton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget getApplication() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(child: Text('seyedmohammadali')),
    ),
  );
}
