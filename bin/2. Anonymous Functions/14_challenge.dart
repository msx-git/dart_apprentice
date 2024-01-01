// Use higher-order functions to find the total number of animals whose names begin with “s”.
// How many sheep, snakes and seals are there?

void main() {
  final animals = {
    'sheep': 99,
    'goats': 32,
    'snakes': 7,
    'lions': 80,
    'seals': 18,
  };
  final sAnimals =
      animals.entries.where((element) => element.key.startsWith("s"));

  for (final animal in sAnimals) {
    print("${animal.key}: ${animal.value}");
  }
}
