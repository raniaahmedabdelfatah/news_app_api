class Book {
  String _title = "";

  void set title(String value) {
    if (value.isEmpty) {
      print("Title cannot be empty!");
    } else {
      _title = value;
    }
  }

  String get title => _title;
}

void main() {
  Book book1 = Book();
  book1.title = "Flutter Basics";
  print("Book title: ${book1.title}");

  Book book2 = Book();
  book2.title = ""; // خطأ
}
