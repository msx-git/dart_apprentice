void main() {
  // default built-in sort function
  final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts.sort();
  print(desserts);

  // custom sorting with anonymous function
  final drinks = ["Coffee", "Tea", "Water", "Juice"];
  drinks.sort((v1, v2) => v1.length.compareTo(v2.length));
  print(drinks);

  // Combining Higher‐Order Methods
  // This is declarative programming
  final bigTallDesserts = desserts
      .where((element) => element.length > 5)
      .map((e) => e.toUpperCase())
      .toList();
  print(bigTallDesserts);

  // This is imperative programming
  final bigTallDesserts2 = <String>[];
  for (final item in desserts) {
    if (item.length > 5) {
      final upperCased = item.toUpperCase();
      bigTallDesserts2.add(upperCased);
    }
  }
  print(bigTallDesserts2);
}
