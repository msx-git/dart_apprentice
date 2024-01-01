void main() {
  const text = """
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorials</h1>
  """;

  final headings = RegExp(r'<h1>(.+)</h1>');
  final matches = headings.allMatches(text);
  for(var i in matches){
    print(i.group(1));
  }

}
