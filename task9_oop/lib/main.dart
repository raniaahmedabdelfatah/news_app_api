class PasswordManager {
  String _password = "";

  set password(String value) {
    if (value.length >= 6) _password = value;
    else print(" كلمة المرور يجب أن تكون 6 أحرف أو أكثر");
  }

  String get password => "****";
}

void main() {
  var pm = PasswordManager();
  pm.password = "12345";//  قصير
  pm.password = "123456";
  print("🔒 كلمة المرور: ${pm.password}");
}
