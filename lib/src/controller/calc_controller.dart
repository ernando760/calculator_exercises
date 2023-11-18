import 'package:calc_exercises/src/events/button_event.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
import 'package:math_expressions/math_expressions.dart';

import 'dart:math' as math;

class CalcController extends ChangeNotifier {
  String oldExpression = "";
  String expression = "0";
  int _amountColumnGrid = 4;

  late final Map<String, String Function(String char)> _mapReplaceSignal = {
    "π": (char) => char.replaceAll("π", "pi"),
    "x": (char) => char.replaceAll("x", "*"),
    "÷": (char) => char.replaceAll("÷", "/"),
    "√": _replaceSignalSquare
  };

  int get amountColumnGrid => _amountColumnGrid;

  void onButtonClick(ButtonEvent event) {
    if (event is CleanFullButtonEvent) {
      _cleanFullExpression();
    } else if (event is CleanButtonEvent) {
      _cleanExpression();
    } else if (event is EqualButtonEvent) {
      _calcExpression();
    } else if (event is CommonButtonEvent) {
      _addExpression(event.value);
    } else if (event is CalcScietificButtonEvent) {
      _amountColumnGrid = _amountColumnGrid == 4 ? 5 : 4;
    }

    notifyListeners();
  }

  String _expParser(String expCalc) {
    Parser p = Parser();
    Expression exp = p.parse(expCalc).simplify();
    return exp.toString();
  }

  void _calcExpression() {
    try {
      expression = _replaceSignalCharButton(expression);
      oldExpression = "$expression =";
      var exp = _expParser(expression);

      print("exp: $exp");
      var value = exp.trim().interpret().toString();

      if (value.endsWith(".0")) {
        final startIndex = value.length - 2;
        value = int.parse(value.replaceFirst(RegExp(r".0"), "", startIndex))
            .toStringAsFixed(8);
      }
      if (expression.contains(value)) return;
      expression = value;
    } catch (_) {
      expression = "ERROR";
    }
  }

  void _addExpression(String value) {
    if (value == ".") {
      expression += value;
      return;
    }
    if (expression == "0" || expression == "ERROR") {
      expression = "";
      expression += value;
      return;
    }
    expression += value;
  }

  void _cleanFullExpression() {
    if (!expression.contains("ERROR")) {
      oldExpression = "Ans = $expression";
    }

    expression = "0";
  }

  void _cleanExpression() {
    if (expression.length == 1) {
      expression = "0";
      return;
    }
    final lastIndex = expression.length - 1;

    expression = expression.replaceFirst(expression[lastIndex], "", lastIndex);
  }

  String _replaceSignalCharButton(
    String char,
  ) {
    for (var key in _mapReplaceSignal.keys) {
      if (char.contains(key)) {
        char = _mapReplaceSignal[key]!(char);
      }
    }
    return char;
  }

  String _replaceSignalSquare(String char) {
    final raiz = int.parse(
        RegExp(r"√.[0-9]+|√.[0-9]").stringMatch(char)?.replaceAll("√", "") ??
            "0");
    final number = int.parse(
        RegExp(r"[0-9]+.+√|[0-9].√").stringMatch(char)?.replaceAll("√", "") ??
            "1");
    print("raiz: $raiz");
    print("number: $number");
    return char.replaceAll(RegExp(r"√|.+√"), "${(number * math.sqrt(raiz))}");
  }
}
