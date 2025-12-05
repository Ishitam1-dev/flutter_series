void main() {
  // anonymous function example
  // int count = 0;

  // var increment = () {
  //   count++;
  //   return count;
  // };

  // print(increment());
  // print(increment());
  // print(increment());
  // print(increment());
  // print(increment());

  // arrow function
  var increment = (int count) => ++count;

  print(increment(20));
}
