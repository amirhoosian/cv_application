import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              image: DecorationImage(
                image: AssetImage('images/drum.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ButtonMusic(),
          ),
        ),
      ),
    );
  }
}

class ButtonMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('c1.wav');
                    },
                    child: Text('he')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('c2.wav');
                    },
                    child: Text('h2')),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('h1.wav');
                    },
                    child: Text('he')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('h2.wav');
                    },
                    child: Text('h2')),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('k1.wav');
                    },
                    child: Text('he')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      play('k2.wav');
                    },
                    child: Text('h2')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void play(sound) {
  final player = AudioPlayer();

  player.play(AssetSource(sound));
}
