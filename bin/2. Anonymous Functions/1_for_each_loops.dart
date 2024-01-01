void main() {
  const numbers = [1, 2, 3];

  numbers.forEach((element) {
    print(element * 3);
  });

  // Another sample
  numbers.forEach((int element) => print(element * 3));

  // forEach runs triple on every element in numbers .
  final triple = (int x) => print(x * 3);
  numbers.forEach(triple);
}
