import 'vehicle.dart';

class Car extends Vehicle {
  double engineSize = 0.0;
  double horsePower = 0.0;
  Car(super.name, super.year, this.engineSize, this.horsePower);
  // add more method
  void describe() {
    print(
        'This car run with engineSize is $engineSize and horsePower is $horsePower');
  }

  //getter and setter method
  int get age => DateTime.now().year - year;
  set age(int value) {
    year = DateTime.now().year - value;
  }

  @override
  String toString() =>
      '${super.toString()}, engineSize: $engineSize, horsePower: $horsePower';
}
