void main() {
  var cantaloupe = Cantaloupe("Yellow");
  cantaloupe.describeColor();
  var watermelon = Watermelon("Red");
  watermelon.describeColor();
}

class Fruit {
  Fruit(this.color);

  String color;

  void describeColor() => print("Color of the fruit: $color");
}

class Melon extends Fruit {
  Melon(super.color);
}

class Watermelon extends Melon {
  Watermelon(super.color);

  @override
  void describeColor() => print("Color of the watermelon: $color");
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}
