import 'package:flutter/material.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(right: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        child: Text(
          value,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
