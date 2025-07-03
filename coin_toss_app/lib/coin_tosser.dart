import 'package:flutter/material.dart';
import 'dart:math';

class CoinTosser extends StatefulWidget {
  const CoinTosser({super.key});

  @override
  State<CoinTosser> createState() {
    return _CoinTosserState();
  }
}

class _CoinTosserState extends State<CoinTosser> {
  var face = 'head';
  final randomizer = Random();

  void tossCoin() {
    setState(() {
      var faceId = randomizer.nextInt(2) + 1;
      if (faceId == 1) {
        face = 'head';
      } else {
        face = 'tail';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/$face.png', width: 200),
        TextButton(
          onPressed: tossCoin,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.deepPurple,
            textStyle: TextStyle(fontSize: 25),
          ),
          child: Text('Toss the Coin'),
        ),
      ],
    );
  }
}
