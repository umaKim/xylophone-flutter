import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded colorKeyMaker(Color color, int soundNumber) {
    return Expanded(child:
        TextButton(onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$soundNumber.wav'));
        }, child: Container(color: color),)
      ,);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            colorKeyMaker(Colors.red, 1),
            colorKeyMaker(Colors.orange, 2),
            colorKeyMaker(Colors.yellow, 3),
            colorKeyMaker(Colors.green, 4),
            colorKeyMaker(Colors.teal, 5),
            colorKeyMaker(Colors.blue, 6),
            colorKeyMaker(Colors.purple, 7),
          ],
        ),
      ),
    );
  }

  // void playSound(int soundNumber) {
  //   final player = AudioPlayer();
  //   player.play(AssetSource('note$soundNumber.wav'));
  // }
  //
  // Expanded buildKey({required Color color, required int soundNumber}) {
  //   return Expanded(
  //     child: TextButton(onPressed: () {
  //       playSound(soundNumber);
  //     }, child: Container(color: color,),)
  //   );
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       backgroundColor: Colors.black,
  //       body: SafeArea(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: <Widget>[
  //             buildKey(color: Colors.red, soundNumber: 1),
  //             buildKey(color: Colors.orange, soundNumber: 2),
  //             buildKey(color: Colors.yellow, soundNumber: 3),
  //             buildKey(color: Colors.green, soundNumber: 4),
  //             buildKey(color: Colors.teal, soundNumber: 5),
  //             buildKey(color: Colors.blue, soundNumber: 6),
  //             buildKey(color: Colors.purple, soundNumber: 7),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
