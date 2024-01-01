class AnotherWidget {
  AnotherWidget({required this.timeStamp});

  final String Function()? timeStamp;
}

void main() {
  final myWidget = AnotherWidget(timeStamp: () {
    return DateTime.now().toIso8601String();
  });

  final timeStamp = myWidget.timeStamp?.call();
  print(timeStamp);
}
