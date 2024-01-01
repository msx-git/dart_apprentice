void main() {
  RegExp emailRegExp =
      RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');

  String email = 'msx.tuit@gmail.com';

  if (emailRegExp.hasMatch(email)) {
    print('Valid');
  } else {
    print('Not valid');
  }
}
