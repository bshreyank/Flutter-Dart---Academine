import 'package:flutter/material.dart';
import 'package:section_3_flutter_deep_dive_quiz_app/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartScreen(),
      ),
    ),
  );
}
