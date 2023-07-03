import 'package:flutter/material.dart';
import 'package:learnflash/models/flashcard.dart';

class Flash extends StatefulWidget {
  final Flashcard flashcard;
  const Flash({super.key, required this.flashcard});

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  bool isFlipped = false;

  void flipCard() {
    setState(() {
      isFlipped = !isFlipped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: flipCard,
      child: Container(
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: isFlipped
                ? widget.flashcard.color
                : widget.flashcard.color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              Text(
                isFlipped ? "Answer" : "Question",
                style: TextStyle(
                  fontSize: 18,
                  color: isFlipped ? Colors.white60 : Colors.grey,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    isFlipped
                        ? widget.flashcard.answer
                        : widget.flashcard.question,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isFlipped ? 48 : 24.0,
                      color: isFlipped ? Colors.white : widget.flashcard.color,
                    ),
                  ),
                ),
              ),
              Text(
                widget.flashcard.category,
                style: TextStyle(
                  color: isFlipped ? Colors.white : Colors.grey,
                ),
              ),
            ],
          )),
    );
  }
}
