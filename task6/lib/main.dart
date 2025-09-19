class Temperature {
  double _celsius = 0;

  set celsius(double value) {
    if (value >= -273) _celsius = value;
    else print(" أقل درجة ممكنة -273");
  }

  double get celsius => _celsius;

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  var temp = Temperature();
  temp.celsius = 25;
  print("🌡️ C: ${temp.celsius}, F: ${temp.fahrenheit}");
}
