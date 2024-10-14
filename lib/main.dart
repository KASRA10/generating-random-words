import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: GeneratingWords(),
    ),
  );
} // End Of Main

class GeneratingWords extends StatefulWidget {
  const GeneratingWords({super.key});

  @override
  State<GeneratingWords> createState() => _GeneratingWordsState();
}

class _GeneratingWordsState extends State<GeneratingWords> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
