import 'dart:io';

void main() {
  List<int> arr2 = [1, 2, 6, 54, 78, 89, 77, 88];

  linearSearch(arr2);
}

void linearSearch(List<int> arr) {
  print("Please write a number :");
  int input = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= arr.length - 1; i++) {
    if (input == arr[i]) {
      print("Found value at $i index");
    }
  }
  print("not found");
}
