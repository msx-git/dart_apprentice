void main() {
  final flowerColor = {
    'roses': 'red',
    'violets': 'blue',
  };

  flowerColor.forEach((key, value) {
    print("$key are $value");
  });
  
  print('i \u2764 Dart');
  print('and so do you');
}
