import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentDice = 2;

  void rolldice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Roll Dice App",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik Medium",
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Image.asset(
              "assets/images/dice-images/dice-$currentDice.png",
              height: 300,
            ),
          ),
          TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              textStyle: TextStyle(
                fontSize: 20,
                fontFamily: "Rubik Medium",
                fontWeight: FontWeight.w900,
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            ),
            child: Text("Click to Roll"),
          ),
        ],
      ),
    );
  }
}
