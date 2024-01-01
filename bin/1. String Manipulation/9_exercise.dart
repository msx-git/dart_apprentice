void main() {
  var buffer = StringBuffer();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (i == j) {
        buffer.write(" ");
      } else {
        buffer.write("*");
      }
    }
    buffer.write("\n");
  }
  print(buffer);
}
