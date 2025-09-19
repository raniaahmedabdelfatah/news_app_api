List<int> reverseList(List<int> numbers) {
  List<int> reversed = [];
  for (int i = numbers.length - 1; i >= 0; i--) {
    reversed.add(numbers[i]);
  }
  return reversed;
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(reverseList(nums));
}
