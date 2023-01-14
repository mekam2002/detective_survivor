import 'package:flutter/material.dart';
import 'package:myliferpg/repositories/api_communication.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            sendMessage("choix 1");
          },
          child: const Text(
            "Choix 1",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            sendMessage("choix 2");
          },
          child: const Text(
            "Choix 2",
          ),
        ),
      ],
    );
  }
}
