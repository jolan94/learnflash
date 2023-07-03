import 'package:flutter/material.dart';

class Flashcard {
  final String category;
  final String question;
  final String answer;
  final IconData icon;
  final Color color;

  Flashcard({
    required this.category,
    required this.question,
    required this.answer,
    this.icon = Icons.question_answer,
    this.color = Colors.blue,
  });
}
