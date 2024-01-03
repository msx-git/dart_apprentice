void main() {
  final originalText = "I like extensions.";

  final encodedText = originalText.encoded;
  print(encodedText);

  final decodedText = encodedText.decoded;
  print(decodedText);
}

extension on String {
  String get encoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }

  String get decoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint - 1);
    }
    return output.toString();
  }
}

// Shorter version, DRY applied
/*extension on String {
  String get encoded => _code(1);

  String get decoded => _code(-1);

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}*/
