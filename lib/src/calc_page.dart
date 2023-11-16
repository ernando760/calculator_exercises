import 'package:calc_exercises/src/controller/calc_controller.dart';
import 'package:calc_exercises/src/events/button_event.dart';
import 'package:calc_exercises/src/widgets/calc_button.dart';
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
          Expanded(child: CalcDisplay(value: _calcController.display)),
          Expanded(
              flex: 2,
              child: GridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                children: [
                  CalcButton(
                    value: "C",
                    color: Colors.blueAccent,
                    onTap: (value) =>
                        _calcController.calc(CleanButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "CE",
                    color: Colors.redAccent,
                    onTap: (value) => _calcController
                        .calc(CleanFullButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "%",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "/",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "9",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "8",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "7",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "*",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "6",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "5",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "4",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "-",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "3",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "2",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "1",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "+",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "0",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: ".",
                    isBorder: true,
                    borderColor: Theme.of(context).colorScheme.primaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "^",
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    onTap: (value) =>
                        _calcController.calc(CommonButtonEvent(value: value)),
                  ),
                  CalcButton(
                    value: "=",
                    color: Colors.green[400],
                    onTap: (value) =>
                        _calcController.calc(EqualButtonEvent(value: value)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
