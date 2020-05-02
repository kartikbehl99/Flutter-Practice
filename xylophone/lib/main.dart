import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import './color_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void onPressedHandler(String audioFile) {
    var assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/audio/" + audioFile));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              ColorSection(
                  Colors.red, () => this.onPressedHandler("note1.wav")),
              ColorSection(
                  Colors.orange, () => this.onPressedHandler("note2.wav")),
              ColorSection(
                  Colors.yellow, () => this.onPressedHandler("note3.wav")),
              ColorSection(
                  Colors.green, () => this.onPressedHandler("note4.wav")),
              ColorSection(
                  Colors.teal, () => this.onPressedHandler("note5.wav")),
              ColorSection(
                  Colors.blue, () => this.onPressedHandler("note6.wav")),
              ColorSection(
                  Colors.purple, () => this.onPressedHandler("note7.wav")),
            ],
          ),
        ),
      ),
    );
  }
}
