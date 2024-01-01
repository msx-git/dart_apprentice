void main() {
  const creditCard = 8600140420013600;
  final numbers = RegExp(r'^[0-9]+$');
  final len = RegExp(r'^.{16}$');
  if (!creditCard.toString().contains(numbers)) {
    print("Must be only numbers!");
  } else if (!len.hasMatch(creditCard.toString())) {
    print("Must be 16 characters long!");
  } else {
    print("Correct card number");
  }
}
