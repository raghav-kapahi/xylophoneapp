import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  void playsound(int numb) {
    final player = AudioCache();
    player.play('assets_note$numb.wav');
  }

  Expanded buildkey({required Color color, required int numb}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(numb);
        },
        color: color,
        height: 80.0,
        child: Center(child: Text('$numb')),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildkey(color: Colors.red, numb: 1),
              buildkey(color: Colors.blue, numb: 2),
              buildkey(color: Colors.purple, numb: 3),
              buildkey(color: Colors.yellow, numb: 4),
              buildkey(color: Colors.green, numb: 5),
              buildkey(color: Colors.white, numb: 6),
              buildkey(color: Colors.teal, numb: 7),
            ],
          ),
        ),
      ),
    );
  }
}
