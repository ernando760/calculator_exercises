import 'package:calc_exercises/src/events/button_event.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcController extends ChangeNotifier {
  String display = "0";

  void calc(ButtonEvent event) {
    final displayLength = display.length;
    if (event is CleanFullButtonEvent) {
      display = "0";
    } else if (event is CleanButtonEvent) {
      if (displayLength == 1) {
        display = "0";
      } else {
        final lastIndex = displayLength - 1;
        display = display.replaceFirst(display[lastIndex], "", lastIndex);
      }
    } else if (event is EqualButtonEvent) {
      try {
        final exp = _orderExp(display);
        final value = exp
            .interpret()
            .toString()
            .trim()
            .replaceFirst(RegExp(r".0"), "", displayLength - 2);

        display = value;
      } catch (e) {
        display = "ERROR";
      }
    } else {
      if (event.value == ".") {
        display += event.value;
      } else if (display == "0" || display == "ERROR") {
        display = "";
        display += event.value;
      } else {
        display += event.value;
      }
    }

    notifyListeners();
  }

  String _orderExp(String expCalc) {
    Parser p = Parser();
    Expression exp = p.parse(expCalc);
    return exp.toString();
  }
}
