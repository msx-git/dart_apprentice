void main() {
  const htmlText = """
    <!DOCTYPE html>
    <html>
    <body>
    <h1>Dart Tutorial</h1>
    <p>Dart is my favorite language.</p>
    </body>
    </html>
  """;

  // final heading = htmlText.substring(34, 47);
  // print(heading); // Dart Tutorial

  final start = htmlText.indexOf('<h1>') + '<h1>'.length; // 34
  final end = htmlText.indexOf('</h1>'); // 47
  final heading = htmlText.substring(start, end);
  print("$heading \n");

  const text = """
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorials</h1>
  """;

  var position = 0;

  while (true) {
    var start = text.indexOf("<h1>", position) + "<h1>".length;
    var end = text.indexOf("</h1>", position);

    if (start == -1 || end == -1) {
      break;
    }

    final heading = text.substring(start, end);
    print(heading);
    position = end + "</h1>".length;
  }
}
