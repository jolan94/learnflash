import 'package:flutter/material.dart';
import 'package:learnflash/screens/flashcards_screen.dart';
import 'package:learnflash/screens/all_questions_screen.dart';
import 'package:learnflash/screens/random_card_screen.dart';
import 'package:learnflash/data/dummy_data.dart';
import 'package:learnflash/models/flashcard.dart';

class FlashcardCategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract unique categories from dummyFlashcards
    List<String> categories =
        dummyFlashcards.map((flashcard) => flashcard.category).toSet().toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllQuestionsScreen(),
                      ),
                    );
                  },
                  child: const Text('All Questions'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RandomCardScreen(),
                      ),
                    );
                  },
                  child: const Text('Random Cards'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Categories',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              String category = categories[index];
              Flashcard flashcard = dummyFlashcards
                  .firstWhere((flashcard) => flashcard.category == category);
              return Card(
                elevation: 0,
                color: flashcard.color.withOpacity(0.1),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: ListTile(
                  leading: Icon(flashcard.icon),
                  title: Text(flashcard.category),
                  iconColor: flashcard.color,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FlashcardsScreen(category: flashcard.category),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
