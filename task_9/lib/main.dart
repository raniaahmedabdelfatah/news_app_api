List<int> removeNegatives(List<int> numbers) {
  List<int> positiveList = [];
  for (int num in numbers) {
    if (num >= 0) {
      positiveList.add(num);
    }
  }
  return positiveList;
}

void main() {
  List<int> nums = [-5, 10, -3, 7, 0, 6];
  print(removeNegatives(nums));
}
