import 'dart:math';

class Circle {
  double _radius = 0;

  set radius(double value) {
    if (value >= 0) _radius = value;
    else print(" نصف القطر لا يمكن أن يكون سالباً");
  }

  double get area => pi * _radius * _radius;
  double get perimeter => 2 * pi * _radius;
}

void main() {
  var c = Circle();
  c.radius = 7;
  print("⚪ المساحة: ${c.area}, المحيط: ${c.perimeter}");
}
