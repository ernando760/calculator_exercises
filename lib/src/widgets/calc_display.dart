import 'package:flutter/material.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    super.key,
    this.expression,
    required this.oldExpression,
  });
  final String oldExpression;
  final String? expression;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              oldExpression,
              style: expression == null
                  ? Theme.of(context).textTheme.displayLarge
                  : Theme.of(context).textTheme.titleLarge,
            ),
            expression != null && expression!.isNotEmpty
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      expression ?? "",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  )
                : Container(),
          ],
        ));
  }
}
