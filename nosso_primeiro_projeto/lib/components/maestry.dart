import 'package:flutter/material.dart';

class Maestry extends StatelessWidget {
  static int get maxMaestryLevel => 5;
  final int maestryLevel;

  const Maestry({
    super.key,
    required this.maestryLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: colorbyMaestry(),
      ),
      height: 140,
    );
  }

  Color colorbyMaestry() {
    if (maestryLevel == 0) {
      return Colors.blue;
    } else if (maestryLevel == 1) {
      return Colors.green;
    } else if (maestryLevel == 2) {
      return Colors.yellow;
    } else if (maestryLevel == 3) {
      return Colors.orange;
    } else if (maestryLevel == 4) {
      return Colors.red;
    } else if (maestryLevel == 5) {
      return Colors.purple;
    } else {
      return Colors.black;
    }
  }
}
