import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('notes/note$noteNumber.wav'));
  }

  Expanded buildButton({
    required int noteNumber,
    required Color color,
  }) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playNote(noteNumber);
          },
          child: Container(
            color: color,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildButton(noteNumber: 1, color: Colors.red),
              buildButton(noteNumber: 2, color: Colors.orange),
              buildButton(noteNumber: 3, color: Colors.yellow),
              buildButton(noteNumber: 4, color: Colors.green),
              buildButton(noteNumber: 5, color: Colors.teal),
              buildButton(noteNumber: 6, color: Colors.blue),
              buildButton(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
