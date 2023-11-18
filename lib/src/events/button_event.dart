sealed class ButtonEvent {
  final String value;

  ButtonEvent({required this.value});
}

final class CommonButtonEvent extends ButtonEvent {
  CommonButtonEvent({required String value}) : super(value: value);
}

final class CleanButtonEvent extends ButtonEvent {
  CleanButtonEvent({required String value}) : super(value: value);
}

final class CleanFullButtonEvent extends ButtonEvent {
  CleanFullButtonEvent({required String value}) : super(value: value);
}

final class EqualButtonEvent extends ButtonEvent {
  EqualButtonEvent({required String value}) : super(value: value);
}

final class CalcScietificButtonEvent extends ButtonEvent {
  CalcScietificButtonEvent() : super(value: "");
}
