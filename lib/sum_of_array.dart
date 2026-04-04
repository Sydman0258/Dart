void main() {
  List<int> and = [1, 2, 3, 4, 5, 7, 8, 9, 10];

  print(sum(and));
}

int sum(List<int> arr) {
  int result = 0;
  for (int i = 0; i <= arr.length - 1; i++) {
    result = result + arr[i];
  }
  return result;
}

// int secondHighest(List<int> arr2) {
//   int i = 0;
//   int m = arr2.reduce(max());

// }
