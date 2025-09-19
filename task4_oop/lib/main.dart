class Student {
  int _mark = 0;

  set mark(int value) {
    if (value >= 0 && value <= 100) {
      _mark = value;
    } else {
      print(" الدرجة يجب أن تكون بين 0 و 100");
    }
  }

  String get result => _mark >= 50 ? "ناجح" : "راسب";
}

void main() {
  var s1 = Student();
  s1.mark = 75;
  print("👨‍🎓 النتيجة: ${s1.result}");

  var s2 = Student();
  s2.mark = 40;
  print("👩‍🎓 النتيجة: ${s2.result}");
}
