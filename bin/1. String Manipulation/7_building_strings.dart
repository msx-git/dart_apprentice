void main() {
  // // ordinary
  // var message = 'Hello' + ' my name is ';
  // const name = 'Ray';
  // message += name;
  // print(message);

  // with buffer
  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  message.toString();
  print(message);

}
