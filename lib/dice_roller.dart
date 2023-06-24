import 'package:flutter/material.dart';
import 'dart:math';
import 'styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = "assets/images/dice-1.png";
  var currentDice = 1;
  void doRollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
      activeDice = "assets/images/dice-$currentDice.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(
          height: 12,
        ),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            ),
            onPressed: doRollDice,
            child: const StyledText(
              text: "Roll Dice",
              fontColor: Colors.white,
              fontSize: 18,
            ))
      ],
    );
  }
}
