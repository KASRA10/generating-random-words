import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  // ToastMessage
  void showToastMessage(String message) => Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.pink,
        textColor: Colors.white,
        fontSize: 21,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => exit(0),
          icon: const Icon(
            Icons.close,
            color: Colors.white,
            size: 28,
            semanticLabel: 'Close Icon For Exiting From Application',
          ),
        ),
        title: const Text(
          'Generate Words!',
          style: TextStyle(
            fontFamily: 'Jua',
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => showToastMessage(
              'Not Available!',
            ), // End Of showToastMessage()
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              semanticLabel: 'Menu Icon, Access To Main Setting Of App',
            ),
          ),
          IconButton(
            onPressed: () => showToastMessage(
              'Not Available!',
            ), // End Of showToastMessage()
            icon: const Icon(
              Icons.bookmark_add_outlined,
              color: Colors.white,
              semanticLabel: 'BookMark Icon To Save Interest Words',
            ),
          )
        ], // End Of Actions
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/images/a.png',
            width: 120,
            height: 120,
            semanticLabel: 'Performs A alphabet',
          ),
          const Text(
            '"A Word"',
            style: TextStyle(
              fontFamily: 'Jua',
              fontSize: 30,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Generate'),
            icon: const Icon(Icons.graphic_eq_outlined),
            iconAlignment: IconAlignment.end,
          ),
        ], // Column Children
      ),
    );
  }
}
