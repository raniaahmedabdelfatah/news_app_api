class Car {
  int _speed = 0;

  void set speed(int value) {
    if (value < 0 || value > 300) {
      print("Invalid speed!");
    } else {
      _speed = value;
    }
  }

  int get speed => _speed;
}

void main() {
  Car car = Car();
  car.speed = 250; // قيمة صحيحة
  print("Car speed: ${car.speed}");

  car.speed = 400; // قيمة غير صحيحة
  print("Car speed: ${car.speed}");
}
