void calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  double average = sum / numbers.length;
  print("Average = $average");
}

void main() {
  List<int> nums = [10, 20, 30, 40, 50];
  calculateAverage(nums);
}
