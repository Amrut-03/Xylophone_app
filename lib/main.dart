import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone(),);

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioCache();

  Expanded buildkey(Color color, {required int soundnumber}) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundnumber);
        },
        child: null,
      ),
    );
  }

  void playSound(int num) {
    final Player = AudioPlayer();
    Player.play(
      AssetSource('note$num.wav'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text(
            'Xylophone Game',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(Colors.red, soundnumber: 1),
                buildkey(Colors.orange, soundnumber: 2),
                buildkey(Colors.yellow, soundnumber: 3),
                buildkey(Colors.green, soundnumber: 4),
                buildkey(Colors.pink, soundnumber: 5),
                buildkey(Colors.blue, soundnumber: 6),
                buildkey(Colors.purple, soundnumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
