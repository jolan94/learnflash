import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learnflash/data/dummy_data.dart';
import 'package:learnflash/models/flashcard.dart';
import 'package:learnflash/widgets/flash.dart';

class RandomCardScreen extends StatefulWidget {
  @override
  _RandomCardScreenState createState() => _RandomCardScreenState();
}

class _RandomCardScreenState extends State<RandomCardScreen> {
  Flashcard randomFlashcard = dummyFlashcards[0];

  void shuffleFlashcard() {
    setState(() {
      randomFlashcard =
          dummyFlashcards[Random().nextInt(dummyFlashcards.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Card'),
      ),
      body: Center(child: Flash(flashcard: randomFlashcard)),
      floatingActionButton: FloatingActionButton(
        onPressed: shuffleFlashcard,
        child: const Icon(Icons.shuffle),
      ),
    );
  }
}
