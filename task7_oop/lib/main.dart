class Product {
  String _name = "";
  double _price = 0;

  set name(String value) {
    if (value.isNotEmpty) _name = value;
    else print(" الاسم لا يمكن أن يكون فارغاً");
  }

  set price(double value) {
    if (value > 0) _price = value;
    else print(" السعر يجب أن يكون أكبر من صفر");
  }

  String get description => "اسم المنتج: $_name — السعر: $_price جنيه";
}

void main() {
  var p = Product();
  p.name = "Laptop";
  p.price = 15000;
  print(p.description);
}
