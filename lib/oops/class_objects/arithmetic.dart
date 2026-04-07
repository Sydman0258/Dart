class Calculator {
  int num1;
  int num2;

  Calculator(this.num1, this.num2);

  int add() {
    return num1 + num2;
  }

  int subtract() {
    return num1 - num2;
  }

  int multiply() {
    return num1 * num2;
  }

  double divide() {
    return num1 / num2;
  }
}

void main() {
  Calculator c = Calculator(20, 10);

  print("Addition : ${c.add()}");
  print("Subtract : ${c.subtract()}");
  print("Multiply : ${c.multiply()}");
  print("Divide : ${c.divide()}");
}
