class BankAccount {
  double _balance = 0;

  set balance(double value) {
    if (value >= 0) _balance = value;
    else print(" الرصيد لا يمكن أن يكون سالباً");
  }

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print("رصيد غير كافي");
    }
  }
}

void main() {
  var account = BankAccount();
  account.deposit(500);
  print("💰 الرصيد: ${account.balance}");
  account.withdraw(200);
  print("💰 الرصيد: ${account.balance}");
}
