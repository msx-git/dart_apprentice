void main() {
  const phrase = 'live and learn';
  final withUnderscores = phrase.replaceAll(' ', '_');
  print(withUnderscores);
  final firstReplaced = phrase.replaceFirst(" ", "~");
  print(firstReplaced);
}
