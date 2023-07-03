import 'package:flutter/material.dart';
import 'package:learnflash/screens/flashcard_categories_screen.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/learn.jpg',
              width: double.infinity,
              height: 500,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Welcome to FlashLearn!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlashcardCategoriesScreen(),
                  ),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
