class ExamResult {
  String _studentName = "";
  int _score = 0;

  set studentName(String value) {
    if (value.isNotEmpty) _studentName = value;
    else print(" الاسم لا يمكن أن يكون فارغاً");
  }

  set score(int value) {
    if (value >= 0 && value <= 100) _score = value;
    else print(" الدرجة يجب أن تكون بين 0 و 100");
  }

  String get grade {
    if (_score >= 85) return "ممتاز";
    else if (_score >= 65) return "جيد";
    else return "ضعيف";
  }
}

void main() {
  var e = ExamResult();
  e.studentName = "Ahmed";
  e.score = 90;
  print("👨‍🎓 ${e._studentName} نتيجته: ${e.grade}");
}
