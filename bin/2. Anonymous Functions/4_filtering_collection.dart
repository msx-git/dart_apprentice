void main() {
  final myList = [1, 2, 3, 4, 5, 6];

  final odds = myList.where((element) => element.isOdd);
  print(odds);
}
