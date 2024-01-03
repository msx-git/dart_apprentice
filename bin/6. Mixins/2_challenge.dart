mixin Adder {
  void sum(double x, double y) {
    print("$x + $y = ${x + y}");
  }
}

class Calculator with Adder {}

void main() {
  var calculate = Calculator();
  calculate.sum(5.5, 7.7);
}
