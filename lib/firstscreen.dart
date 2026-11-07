import 'package:flutter/material.dart';
import 'package:rolldice/diceroll.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.deepPurple.shade900],
        ),
      ),
      child: DiceRoll(),
    );
  }
}
