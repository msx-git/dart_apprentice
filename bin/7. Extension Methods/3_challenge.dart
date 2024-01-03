extension DurationExtension on int {
  Duration get minutes => _calculate();

  Duration _calculate() {
    final hour = this ~/ 60;
    final minute = this % 60;
    return Duration(hours: hour, minutes: minute);
  }
}

void main() {
  final timeRemaining = 205.minutes;
  print(timeRemaining);
}
