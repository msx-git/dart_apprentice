class Button {
  Button({
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;
}

void main() {
  final myButton = Button(
    title: "Click me!",
    onPressed: () {
      print("Clicked");
    },
  );
  myButton.onPressed();
  // Or
  myButton.onPressed.call();

  final anotherButton = Button(
    title: 'Click me, too!',
    onPressed: () {
      print('Another Button Clicked');
    },
  );
  anotherButton.onPressed();
}
