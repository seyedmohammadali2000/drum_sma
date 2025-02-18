import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
          child: getbody()),
    ),
  ));
}

Widget getbody() {
  return Column(
    children: [
      Expanded(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('c1.wav');
                  },
                  child: Text('1'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('c2.wav');
                  },
                  child: Text('2')))
        ],
      )),
      Expanded(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('h1.wav');
                  },
                  child: Text('3'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('h2.wav');
                  },
                  child: Text('4')))
        ],
      )),
      Expanded(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('k1.wav');
                  },
                  child: Text('5'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    playsound('k2.wav');
                  },
                  child: Text('6')))
        ],
      )),
    ],
  );
}

playsound(String sound) {
  var player = AudioCache();
  player.play(sound);
}
