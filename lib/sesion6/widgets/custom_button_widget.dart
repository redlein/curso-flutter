import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {

  final Function aumentar;
  final Function disminuir;
  final Function reset;

  const CustomButtonWidget({super.key, required this.aumentar, required this.disminuir, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          onPressed: () => disminuir(),
          child: const Icon(Icons.remove),
        ),
        MaterialButton(
          onPressed: () => reset(),
          child: const Icon(Icons.restore),
        ),
        MaterialButton(
          onPressed: () => aumentar(),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}