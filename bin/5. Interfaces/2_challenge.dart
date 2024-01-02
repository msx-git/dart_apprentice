void main() {
  final repo = Bottle();
  repo.open();
}

abstract class Bottle {
  void open();

  factory Bottle() => SodaBottle();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print("Fizz Fizz");
  }
}
