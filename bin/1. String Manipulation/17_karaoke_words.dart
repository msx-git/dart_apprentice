void main() {
  const lrcText = "[00:12.34]Row, row, row your boat";
  final minutes = lrcText.substring(1, 3);
  final seconds = lrcText.substring(4, 6);
  final hundredths = lrcText.substring(7, 9);
  final lyrics = lrcText.substring(lrcText.indexOf("Row"));

  final result =
      "minutes: $minutes\nseconds: $seconds\nhundredths: $hundredths\nlyrics: $lyrics";
  print(result);
}
