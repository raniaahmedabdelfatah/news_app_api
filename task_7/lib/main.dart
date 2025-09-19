
void sumUntilN(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print("Sum from 1 to $n = $sum");
}

void main() {
  sumUntilN(10);
}
