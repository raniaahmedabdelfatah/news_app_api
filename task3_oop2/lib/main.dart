class Rectangle {
  double _width = 0;
  double _height = 0;

  set width(double value) {
    if (value >= 0) _width = value;
    else print("❌ العرض لا يمكن أن يكون سالباً");
  }

  set height(double value) {
    if (value >= 0) _height = value;
    else print("❌ الارتفاع لا يمكن أن يكون سالباً");
  }

  double get area => _width * _height;
}

void main() {
  var rect = Rectangle();
  rect.width = 5;
  rect.height = 10;
  print("📐 المساحة: ${rect.area}");
}
