void main() {
  const numbers = [2, 4, 6, 8, 10, 12];

  final mapped = numbers.map((int e) => e * e);
  print(mapped);

  // If you want list, you can turn it into one
  print(mapped.toList());
}
