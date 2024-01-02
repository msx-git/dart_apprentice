void main() {
  // This is error.
  // Wev can’t create an object from an abstract class
  // final animal = Animal();

  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
}

abstract class Animal {
  bool isAlive = true;

  void eat();

  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    // TODO: implement eat
    print('Munch munch');
  }

  @override
  void move() {
    // TODO: implement move
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}
