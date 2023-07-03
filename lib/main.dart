import 'package:flutter/material.dart';
import 'screens/get_started_screen.dart';

void main() {
  runApp(FlashLearnApp());
}

class FlashLearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlashLearn',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: GetStartedScreen(),
    );
  }
}
