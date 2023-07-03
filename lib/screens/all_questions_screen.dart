import 'package:flutter/material.dart';
import 'package:learnflash/data/dummy_data.dart';
import 'package:learnflash/models/flashcard.dart';
import 'package:learnflash/widgets/flashcard_item.dart';

class AllQuestionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Questions'),
      ),
      body: ListView.builder(
        itemCount: dummyFlashcards.length,
        itemBuilder: (context, index) {
          Flashcard flashcard = dummyFlashcards[index];
          return FlashcardItem(flashcard: flashcard);
        },
      ),
    );
  }
}
