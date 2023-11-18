import 'package:calc_exercises/src/events/button_event.dart';
import 'package:calc_exercises/src/widgets/calc_button.dart';
import 'package:flutter/material.dart';

final list = List.generate(
    5,
    (index) => const CalcButton(
          value: "%",
          isVisible: false,
        ));

class CalButtonHub extends StatefulWidget {
  const CalButtonHub(
      {super.key, required this.onButtonClick, this.crossAxisCount = 4});

  final void Function(ButtonEvent event) onButtonClick;
  final int crossAxisCount;

  @override
  State<CalButtonHub> createState() => _CalButtonHubState();
}

class _CalButtonHubState extends State<CalButtonHub> {
  late List<Widget> listButtonDefault = [
    CalcButton(
      value: "C",
      color: Colors.blueAccent,
      onTap: (value) => widget.onButtonClick(CleanButtonEvent(value: value)),
    ),
    CalcButton(
      value: "CE",
      color: Colors.redAccent,
      onTap: (value) =>
          widget.onButtonClick(CleanFullButtonEvent(value: value)),
    ),
    CalcButton(
      value: "%",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "÷",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "9",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "8",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "7",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "x",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "6",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "5",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "4",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "-",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "3",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "2",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "1",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "+",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      icon: Icons.undo_sharp,
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (_) => widget.onButtonClick(CalcScietificButtonEvent()),
    ),
    CalcButton(
      value: "0",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: ".",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "=",
      color: Colors.green[400],
      onTap: (value) => widget.onButtonClick(EqualButtonEvent(value: value)),
    ),
  ];

  late List<Widget> listButtonWithExtension = [
    CalcButton(
      value: "2nd",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "deg",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "sin",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "cos",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "tan",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "x^y",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "lg",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "ln",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "(",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: ")",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "√",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "C",
      color: Colors.blueAccent,
      onTap: (value) => widget.onButtonClick(CleanButtonEvent(value: value)),
    ),
    CalcButton(
      value: "CE",
      color: Colors.redAccent,
      onTap: (value) =>
          widget.onButtonClick(CleanFullButtonEvent(value: value)),
    ),
    CalcButton(
      value: "%",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "÷",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "x!",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "9",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "8",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "7",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "x",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "1/x",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "6",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "5",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "4",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "-",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "π",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "3",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "2",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "1",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "+",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      icon: Icons.undo_sharp,
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (_) => widget.onButtonClick(CalcScietificButtonEvent()),
    ),
    CalcButton(
      value: "e",
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "0",
      isBorder: true,
      borderColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: ".",
      color: Theme.of(context).colorScheme.secondaryContainer,
      onTap: (value) => widget.onButtonClick(CommonButtonEvent(value: value)),
    ),
    CalcButton(
      value: "=",
      color: Colors.green[400],
      onTap: (value) => widget.onButtonClick(EqualButtonEvent(value: value)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: widget.crossAxisCount,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        children: widget.crossAxisCount == 4
            ? listButtonDefault
            : listButtonWithExtension);
  }
}
