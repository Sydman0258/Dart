void main() {
  double add(double a, int b) {
    double c;

    c = (a + b);
    print("The sum of the two numbers is : $c");
    return c;
  }

  double subtract(int a, double b) {
    double c;

    c = (a - b);
    print("The difference of the two numbers is : $c");
    return c;
  }

  double multiply(double a, int b) {
    double c;

    c = (a * b);
    print("The product of the two numbers is : $c");
    return c;
  }

  double divide(int a, double b) {
    double c;

    c = (a / b);
    print("The division of the two numbers is : $c");
    return c;
  }

  add(10, 20);
  subtract(10, 20);
  multiply(50, 40);
  divide(10, 20);

  List<String> hello = [];
  for (var z = 0; z <= 5; z++) {
    hello.add("hello");
  }
  print(hello);

  num bob = 1;
  while (bob < 50) {
    bob = bob * 2;
  }
  print(bob);

  var v = 1;
  do {
    v += 50;
  } while (v < 777);
  print(v);
}
