void main() {
  // with reduce
  const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final total = numbers.reduce((value, element) => value + element);
  print(total);

  // with fold
  const evens = [2, 4, 6, 8];
  final evensTotal = evens.fold(0, (sum, element) => sum + element);
  print(evensTotal);

  // reduce vs fold: you get error if the list is empty with reduce but not with fold
}
