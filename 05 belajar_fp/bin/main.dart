void main() {
  // // anonymous function
  // var sum = (int num1, int num2) => num1 + num2;
  // Function printLambda = () => print('This is lambda function');

  // print(sum(3, 4));
  // printLambda();

  // // higher-order function
  // var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];
  // fibonacci.forEach((item) {
  //   print(item);
  // });

  // closure
  var closureExample = calculate(2);
  closureExample();
  closureExample();
}

Function calculate(base) {
  var count = 1;

  return () => print("Value is ${base + count++}");
}
