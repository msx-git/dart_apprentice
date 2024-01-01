typedef TouchHandler = Function(double x, double y);

class Surface {
  Surface({required this.onTouch});

  final TouchHandler onTouch;

  void touch(double x, double y) {
    onTouch.call(x, y);
  }
}

void main() {
  final surface = Surface(onTouch: (x, y) => print("x: $x, y: $y"));
  surface.touch(202.3, 134.0);
}
