import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];
  final scale = ['C', 'D', 'E', 'F', 'G', 'A', 'B'];
  final player = new AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [1, 2, 3, 4, 5, 6, 7].map(createKey).toList(),
          ),
        ),
      ),
    );
  }

  Widget createKey(int num) => Expanded(
        child: FlatButton(
          onPressed: () {
            player.play('note$num.wav');
          },
          child: Text(
            scale[num - 1],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          color: colors[num - 1],
        ),
      );
}
