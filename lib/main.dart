import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  playSound(int num){
    final player=AudioPlayer();
    player.setAsset('assets/assets_note$num.wav');
    player.play();
  }

  Expanded soundKey(int audioNumber,Color color){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(audioNumber);
        },
        child: Text(''),
        style:ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(color),
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
              soundKey(1,Colors.purple),
              soundKey(2,Colors.indigo),
              soundKey(3,Colors.green),
              soundKey(4,Colors.orange),
              soundKey(5,Colors.yellow),
              soundKey(6,Colors.red),
              soundKey(7,Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}

