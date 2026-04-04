import 'dart:io';

void printTotal() {
  List<int> items = [];
  int n = 7;
  do {
    print("Write the amount ($n times left) :");
    int input = int.parse(stdin.readLineSync()!);
    items.add(input);
    n--;
  } while (n > 0);
  int sum = 0;
  for (int i in items) {
    sum += i;
  }
  print("The sum of numbers is $sum ");
}

void main() {
  printTotal();
}
