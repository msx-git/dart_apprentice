// Write a function named repeatTask with the following definition:
// int repeatTask(int times, int input, Function task)
// It repeats a given task on input for times number of times.
// Pass an anonymous function to repeatTask to square the input of 2 four times. Confirm
// that you get the result 65536 because 2 squared is 4 , 4 squared is 16 , 16 squared
// is 256 and 256 squared is 65536 .

void main() {
  print(repeatTask(4, 2, (int x) => x * x));
}

int repeatTask(int times, int input, Function task) {
  int res = input;
  for (int i = 0; i < times; i++) {
    res = task(res);
  }
  return res;
}
