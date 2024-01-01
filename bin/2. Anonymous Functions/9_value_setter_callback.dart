class MyWidget {
  MyWidget({required this.onTouch});

  final void Function(double xPosition) onTouch;
}

void main() {
  final myWidget = MyWidget(onTouch: (x) => print(x));
  myWidget.onTouch(1.5);
}
