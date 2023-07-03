import 'package:flutter/material.dart';
import 'package:learnflash/data/dummy_data.dart';
import 'package:learnflash/models/flashcard.dart';
import 'package:learnflash/widgets/flash.dart';

class FlashcardsScreen extends StatefulWidget {
  final String category;

  const FlashcardsScreen({Key? key, required this.category}) : super(key: key);

  @override
  _FlashcardsScreenState createState() => _FlashcardsScreenState();
}

class _FlashcardsScreenState extends State<FlashcardsScreen> {
  int currentCardIndex = 0;
  bool isFlipped = false;

  void flipCard() {
    setState(() {
      isFlipped = !isFlipped;
    });
  }

  void nextQuestion() {
    setState(() {
      currentCardIndex = (currentCardIndex + 1) % flashcards.length;
      isFlipped = false;
    });
  }

  late List<Flashcard> flashcards;

  @override
  void initState() {
    super.initState();
    flashcards = dummyFlashcards
        .where((flashcard) => flashcard.category == widget.category)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Flash(flashcard: flashcards[currentCardIndex])),
            ElevatedButton(
              onPressed: nextQuestion,
              child: const Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }
}
