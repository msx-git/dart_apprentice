void main() {
  const password = "Password123";
  final lowercase = RegExp(r'[a-z]');
  final uppercase = RegExp(r'[A-Z]');
  final numbers = RegExp(r'[0-9]');

  // RegExp(r'.{8,}') for length
  if (password.length >= 8) {
    if (!password.contains(lowercase)) {
      print('Your password must have a lowercase letter!');
    } else if (!password.contains(uppercase)) {
      print('Your password must have a uppercase letter!');
    } else if (!password.contains(numbers)) {
      print('Your password must have a number!');
    } else {
      print("Your password is OK!");
    }
  } else {
    print("Your password must be at least 8 characters long!");
  }
}

// https://telegra.ph/Regex-Summary-01-01