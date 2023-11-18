import 'package:calc_exercises/src/controller/calc_controller.dart';
import 'package:calc_exercises/src/events/button_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      "Testando o evento [CommonButtonEvent] se está adiconando os caracteres corretamente",
      () {
    final calcController = CalcController();
    calcController.onButtonClick(CommonButtonEvent(value: "sin(45) x 5"));

    expect(calcController.expression, equals("sin(45) x 5"));
  });

  test("Testando o evento [EqualButtonEvent] se está calculando corretamente",
      () {
    // "√"
    final calcController = CalcController();
    calcController.onButtonClick(CommonButtonEvent(value: "(√9 * 2) * 2"));
    calcController.onButtonClick(EqualButtonEvent(value: "="));
    print(calcController.expression);
    // expect(calcController.expression, equals("6.28318531"));
  });

  test(
      "Testando o evento [CleanButtonEvent] se está limpando os caracteres um por vez",
      () {
    final calcController = CalcController();

    calcController.onButtonClick(CommonButtonEvent(value: "sin(45) * 5"));

    calcController.onButtonClick(CleanButtonEvent(value: "C"));
    calcController.onButtonClick(CleanButtonEvent(value: "C"));
    calcController.onButtonClick(CleanButtonEvent(value: "C"));
    calcController.onButtonClick(CleanButtonEvent(value: "C"));

    expect(calcController.expression, equals("sin(45)"));
  });

  test(
      "Testando o evento [CleanFullButtonEvent] se está limpando os caracteres de uma só vez, e retonar 0",
      () {
    final calcController = CalcController();
    calcController.onButtonClick(CommonButtonEvent(value: "sin(45) * 5"));

    calcController.onButtonClick(CleanFullButtonEvent(value: "CE"));

    expect(calcController.expression, equals("0"));
  });
}
