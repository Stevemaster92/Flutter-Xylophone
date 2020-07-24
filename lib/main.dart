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
            children: createXylophone(),
          ),
        ),
      ),
    );
  }

  List<Widget> createXylophone() {
    List<Widget> keys = new List();

    for (int i = 0; i < 7; i++) {
      keys.add(createKey(i));
    }

    return keys;
  }

  Widget createKey(int i) => Expanded(
        child: FlatButton(
          onPressed: () {
            player.play('note${i + 1}.wav');
          },
          child: Text(
            scale[i],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          color: colors[i],
        ),
      );
}
