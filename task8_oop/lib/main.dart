class Movie {
  String _title = "";
  double _rating = 0;

  set title(String value) {
    if (value.isNotEmpty) _title = value;
    else print(" العنوان لا يمكن أن يكون فارغاً");
  }

  set rating(double value) {
    if (value >= 0 && value <= 10) _rating = value;
    else print(" التقييم يجب أن يكون بين 0 و 10");
  }

  String get info => "🎬 الفيلم $_title حصل على تقييم $_rating/10";
}

void main() {
  var m = Movie();
  m.title = "Inception";
  m.rating = 9;
  print(m.info);
}
