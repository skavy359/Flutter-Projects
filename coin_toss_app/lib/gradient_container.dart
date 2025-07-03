import 'package:flutter/material.dart';
import 'package:coin_toss_app/coin_tosser.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.pinkAccent],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: CoinTosser()),
    );
  }
}
