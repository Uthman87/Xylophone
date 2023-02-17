import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.load('note$noteNumber.wav');
  }

  Expanded soundButton({Color? color = Colors.black, required int noteNumber}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () => playSound(noteNumber),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          titleSpacing: 1.5,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundButton(color: Colors.teal.shade400, noteNumber: 1),
              soundButton(color: Colors.red.shade400, noteNumber: 2),
              soundButton(color: Colors.yellow.shade400, noteNumber: 3),
              soundButton(color: Colors.green.shade400, noteNumber: 4),
              soundButton(color: Colors.blue.shade400, noteNumber: 5),
              soundButton(color: Colors.lightGreen.shade400, noteNumber: 6),
              soundButton(color: Colors.indigo.shade400, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
