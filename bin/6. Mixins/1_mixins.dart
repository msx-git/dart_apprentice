void main() {
  final robin = Robin();
  robin.fly();
  robin.layEggs();
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}
mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Robin with EggLayer, Flyer {}
