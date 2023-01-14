import 'package:flutter/material.dart';

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
          onPressed: () {},
          child: const Text(
            "Choix 1",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            "Choix 2",
          ),
        ),
      ],
    );
  }
}
