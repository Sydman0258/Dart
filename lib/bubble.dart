void main() {
  List<int> bubble(List<int> sort) {
    int i = 0;
    int j = 0;
    int temp = 0;
    List<int> result = [];
    for (i = 0; i < sort.length - 1; i++) {
      for (j = 0; j < sort.length - i - 1; j++) {
        if (sort[j] > sort[j + 1]) {
          temp = sort[j];
          sort[j] = sort[j + 1];
          sort[j + 1] = temp;
        }
      }
    }
    result = sort;
    return result;
  }

  List<int> testcase = [10, 5, 1, 22, 45];

  print(bubble(testcase));
}
