// myFunction() : executes the function code immediately
// myFunction : references the function without executing the code.
import '8_void_callback.dart';

class StateManager {
  int _counter = 0;

  void increment() {
    _counter++;
  }
}

void main() {
  final manager = StateManager();

  final myButton = Button(
    title: "Click me!",
    // This is not that good
    // onPressed: () {
    //   manager.increment();
    // },

    // This is better
    onPressed: manager.increment,
  );

  const cities = ['Istanbul', 'Ankara', 'Izmir', 'Bursa', 'Antalya'];
  // This is not that good
  // cities.forEach((city) => print(city));

  // This is better
  cities.forEach(print);
}
