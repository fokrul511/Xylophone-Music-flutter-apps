import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void players(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded buildKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          onPressed: () {
            players(soundNumber!);
          },
          child: Icon(
            Icons.music_note,
            size: 40,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text('XylPhone'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.pink, soundNumber: 1),
              const SizedBox(height: 5),
              buildKey(color: Colors.purple, soundNumber: 2),
              const SizedBox(height: 5),
              buildKey(color: Colors.redAccent, soundNumber: 3),
              const SizedBox(height: 5),
              buildKey(color: Colors.green, soundNumber: 4),
              const SizedBox(height: 5),
              buildKey(color: Colors.blue, soundNumber: 5),
              const SizedBox(height: 5),
              buildKey(color: Colors.deepPurpleAccent, soundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}
