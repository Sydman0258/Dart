void main() {
  List<int> array = [1, 5, 6, 7, 8, 4, 10, 11];
  print(array);

  var array2 = [];

  array2.add(array[1]);
  array2.add(array[2]);

  print(array2);

  print(isSecondLargest(array));
}

int isSecondLargest(List<int> array) {
  int largest = 0;
  int secondlargest = 0;

  for (int i in array) {
    if (i > largest) {
      secondlargest = largest;
      largest = i;
    } else if (i < largest && i > secondlargest) {
      secondlargest = i;
    }
  }
  return secondlargest;
}
