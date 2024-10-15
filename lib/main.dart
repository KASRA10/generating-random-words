import 'dart:io';
import 'dart:math';

import 'package:english_words/english_words.dart';
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

  String generatingWord = 'A Word';
  String imageFirstCharacter = 'a';
  int wordCounter = 0;
  int wordListRandomNumber = 0;

  void generateWords() {
    setState(() {
      wordListRandomNumber = Random().nextInt(4394);
      generatingWord = all.elementAt(wordListRandomNumber);
      imageFirstCharacter = generatingWord[0];
      wordCounter++;
    });
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/a.png',
              width: 220,
              height: 220,
              semanticLabel: 'Performs A alphabet',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50.0,
              ),
              child: Text(
                '"$generatingWord"',
                style: const TextStyle(
                  fontFamily: 'Jua',
                  fontSize: 35,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => generateWords(),
              label: const Text(
                'Generate Word',
                style: TextStyle(
                  fontFamily: 'Jua',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              icon: const Icon(
                Icons.restart_alt_outlined,
                color: Colors.white,
                semanticLabel:
                    'restore and regenerate the words icon with two arrows',
              ),
              iconAlignment: IconAlignment.end,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shadowColor: Colors.pink,
                elevation: 15,
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 15.0,
                ),
              ), // ElevationButton StyleFrom
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 25.0,
              ),
              child: Divider(
                color: Colors.pink,
                thickness: 1.0,
                indent: 100.0,
                endIndent: 100.0,
              ),
            ),
            const SizedBox(
              width: 250.0,
              child: Text(
                'The Image will Indicate The First Character/ Alphabet Of The Word!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Jua',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
              ),
              child: Text(
                'Number Of Generated Words To Day: $wordCounter',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Jua',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ], // Column Children
        ),
      ),
    );
  }
}
