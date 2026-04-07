import 'dart:io';

class SimpleInterest {
  double principal;
  double time;
  double rate;

  SimpleInterest({
    required this.time,
    required this.rate,
    required this.principal,
  });

  double interest() {
    return (principal * time * rate) / 100;
  }
}

void main() {
  print("Please enter the principal :");
  double input = double.parse(stdin.readLineSync()!);

  SimpleInterest si = SimpleInterest(principal: input, time: 2, rate: 12);
  print("The simple interest is ${si.interest()}");
}
