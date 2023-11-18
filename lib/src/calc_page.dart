import 'package:calc_exercises/src/controller/calc_controller.dart';

import 'package:calc_exercises/src/widgets/calc_button_hub.dart';
import 'package:calc_exercises/src/widgets/calc_display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final CalcController _calcController = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _calcController.addListener(_listener);
  }

  @override
  void dispose() {
    _calcController.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: CalcDisplay(
            expression: _calcController.expression,
            oldExpression: _calcController.oldExpression,
          )),
          Expanded(
              flex: _calcController.amountColumnGrid == 4 ? 2 : 3,
              child: CalButtonHub(
                onButtonClick: _calcController.onButtonClick,
                crossAxisCount: _calcController.amountColumnGrid,
              ))
        ],
      ),
    );
  }
}
