void main() {
  final time = Duration(hours: 2, minutes: 9, seconds: 25);
  final hours = time.inHours;
  final minutes = "${time.inMinutes % 60}".padLeft(2, '0');
  final seconds = "${time.inSeconds % 60}".padLeft(2, '0');

  print("$hours:$minutes:$seconds");
}
