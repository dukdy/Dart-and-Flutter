class Vehicle {
  String name;
  int year;
  //constructor
  Vehicle(this.name, this.year);
  @override
  String toString() => 'name: $name, year: $year';
}
