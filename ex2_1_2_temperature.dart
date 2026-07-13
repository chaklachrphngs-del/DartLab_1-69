class Temperature {
  double _celsius = 0.0;
  double get celsius => _celsius;

  set celsius(double value) {
    if (value < -273.15) {
      print('อุณหภูมิต่ำกว่า (-273.15°C) ไม่สามารถตั้งค่าได้');
    } else {
      _celsius = value;
    }
  }

  double get fahrenheit => (_celsius * 9 / 5) + 32;
}

void main() {
  Temperature temp = Temperature();

  temp.celsius = 25.0;
  print('องศาเซลเซียส: ${temp.celsius}°C');
  print('องศาฟาเรนไฮต์: ${temp.fahrenheit}°F');

  temp.celsius = -300.0; 
  print('ค่าปัจจุบันยังคงเป็น: ${temp.celsius}°C');
}