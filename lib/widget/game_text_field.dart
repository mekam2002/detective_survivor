import 'package:flutter/material.dart';

class GameTextfield extends StatelessWidget {
  const GameTextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 138, 135, 135),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.emoji_emotions),
              Text(
                "Tap your Message",
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.horizontal_rule_outlined,
              ),
              Icon(Icons.mic_none_rounded),
            ],
          )
        ],
      ),
    );
  }
}
