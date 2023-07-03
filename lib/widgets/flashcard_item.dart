import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardItem extends StatelessWidget {
  final Flashcard flashcard;

  const FlashcardItem({super.key, required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: flashcard.color.withOpacity(0.1),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListTile(
        leading: Icon(flashcard.icon),
        title: Text(flashcard.question),
        subtitle: Text(flashcard.category),
        iconColor: flashcard.color,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        onTap: () {
          showDialog(
              context: context,
              builder: (
                context,
              ) {
                return AlertDialog(
                    content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Answer"),
                    const SizedBox(height: 16),
                    Text(
                      flashcard.answer,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: flashcard.color,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ));
              });
        },
      ),
    );
  }
}
