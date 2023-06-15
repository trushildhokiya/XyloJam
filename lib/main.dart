import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({Color color = Colors.black, int noteNumber = 0}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.purpleAccent, noteNumber: 1),
            buildKey(color: Colors.indigoAccent, noteNumber: 2),
            buildKey(color: Colors.blueAccent, noteNumber: 3),
            buildKey(color: Colors.greenAccent, noteNumber: 4),
            buildKey(color: Colors.yellowAccent, noteNumber: 5),
            buildKey(color: Colors.orangeAccent, noteNumber: 6),
            buildKey(color: Colors.redAccent, noteNumber: 7),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
