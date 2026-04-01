void main() {
  int binary(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;
    int mid = 0;
    while (start <= end) {
      mid = (start + ((end - start) / 2)).toInt();

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        start += 1;
      } else {
        end -= 1;
      }
    }
    return (target > nums[mid]) ? mid + 1 : mid;
  }

  List<int> test = [1, 2, 6, 8];
  int test2 = 4;

  int ans = binary(test, test2);
  print(ans);
}
