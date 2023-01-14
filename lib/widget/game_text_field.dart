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
    );
  }
}
