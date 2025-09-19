void findMaxMin(List<int> numbers) {
  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }

  print("Max = $max, Min = $min");
}

void main() {
  List<int> nums = [20, 5, 99, -10, 45];
  findMaxMin(nums);
}
