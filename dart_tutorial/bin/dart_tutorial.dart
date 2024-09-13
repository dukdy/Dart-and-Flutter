// import 'package:dart_tutorial/dart_tutorial.dart' as dart_tutorial;
import 'package:dart_tutorial/function.dart';
import 'package:dart_tutorial/models/bicycle.dart';
import 'package:dart_tutorial/models/car.dart';
import 'package:dart_tutorial/repositories/movie_repository.dart';

void main(List<String> arguments) async {
  print('Hello, World!');
  print(firstname);
  print(year);
  print('Tên: $fullname, Năm sinh: $year');
  print(paragraph);
  if (paragraph.isEmpty) {
    print("This string is empty");
  } else {
    print("This string is NOT empty");
  }

  print(isValidInput);
  print('2 + 3 = ${add(2, 3)}');
  print('5 x 6 = ${multiply(x: 5, y: 6)}');

  sayHello('Duy'); //Hello Duy
  sayHello(); //Hello world

  // String urlHome = getUrl('SERVER_X', port: 3002);
  // print('haha');

  print('Hôm nay là ${getDateTimeString(day: 13, month: 9, year: 2024)}');

  doSomeTasks(
      param1: 1,
      param2: 2,
      completion: (int result) {
        print('The result is: $result');
      });

  // List
  final List<String> carBrands = [
    "Bently",
    "Buick",
    "BMW",
    "Audi",
    "Fiat",
    "Mercedes-Benz"
  ];
  // carBrands = ["Toyota", "Honda"]; //cannot reassigned if 'final'
  // carBrands[0] = "Honda"; //can edit if 'final', cannot edit if 'const'
  print(carBrands);
  print('There are ${carBrands.length} brand names');
  //iterate through carBrands
  for (var i = 0; i < carBrands.length; i++) {
    String carBrand = carBrands[i];
    print(carBrand);
  }
  print('Iterate using forEach');
  for (var carBrand in carBrands) {
    print(carBrand);
  }
  carBrands.shuffle();
  print('After shuffle');
  carBrands.asMap().forEach((index, carBrand) {
    print('index: $index, carBrand: $carBrand');
  });
  //insert more item
  carBrands.add('Mazda');
  print(carBrands);
  print('Add item to the first');
  carBrands.insert(0, 'Cadillac');
  print(carBrands);
  List<String> clonnedCarBrands = [...carBrands];
  clonnedCarBrands[0] = 'Honda';
  print('carBrands = $carBrands');
  print('clonnedCarBrands = $clonnedCarBrands');
  print('Sort ascending');
  clonnedCarBrands.sort((a, b) => a.compareTo(b));
  print('clonnedCarBrands = $clonnedCarBrands');

  //create object from class
  //abstract class cannot be initial
  // Vehicle vehicle = new Vehicle('Volvo', 2000);
  // print(vehicle);
  print('Init a Car object from class');
  Car car1 = Car('Lexus', 1990, 118, 200);
  //update some fields
  car1.name = "Huyndai";
  car1.year = 2000;
  print(car1);
  car1.describe();
  print(car1.age);
  car1.age = 20;
  print(car1.year);

  //create form Bicycle
  Bicycle bicycle1 = Bicycle(name: 'Thống nhất', year: 2001, hasBasket: true);
  print(bicycle1);
  Bicycle bicycle2 = Bicycle(name: 'Thống nhất', year: 2001, hasBasket: true);

  // if (bicycle1.equals(bicycle2)) {
  //   print('2 object has the same content');
  // }
  if (bicycle1 == bicycle2) {
    print('2 objects has the same content');
  }

  Bicycle bicycle3 = bicycle1;
  if (identical(bicycle1, bicycle3)) {
    print('b1 and b3 are identical');
  }
  print(bicycle1.hashCode);
  print(bicycle2.hashCode);
  print(bicycle3.hashCode);

  if (bicycle1.hashCode == bicycle3.hashCode) {
    print('2 identical objects have the same hashCode');
  }

  //clone an object with conpyWith Method
  print(bicycle2);
  Bicycle bicycle4 = bicycle2.copyWith(year: 2005);
  Bicycle bicycle5 = bicycle2.copyWith(year: 2005, name: 'Coldzy');
  print(bicycle5);

  //you can add a property value to all objects(class level) = static
  print(Bicycle.maxSpeed);

  //an array of objects
  List<Car> cars = [
    Car("GLB", 2021, 1.3, 163),
    Car("GLC", 2003, 112, 230),
    Car("Lexus", 1990, 109.6, 145.8),
    Car("Honda", 1999, 22.4, 97.9),
    Car("Camry", 2003, 104.3, 145.8),
    Car("KIA", 2000, 20.5, 239),
    Car("Porche", 1997, 246, 189.4),
    Car("Audi", 1998, 20.1, 24.6),
  ];

  // insert car to the first
  cars.insert(0, Car('Mini Cooper', 1993, 134.2, 250));
  // insert to the last
  cars.add(Car('Mazda', 2012, 25.4, 500));
  // print('cars: $cars');
  cars.asMap().forEach((index, element) {
    print('$index - $element');
  });
  // filter cars which year is between  1990 and 2000
  List<Car> filteredCars =
      cars.where((car) => car.year >= 1990 && car.year <= 2000).toList();

  print('FilteredCars: $filteredCars');
  filteredCars.asMap().forEach((index, car) {
    print('$index - $car');
  });
  print('sort the list by horsePower');
  //make a separated list, then sort
  List<Car> sortedCars = [...cars];
  sortedCars.sort(((car1, car2) => car1.horsePower.compareTo(car2.horsePower)));
  print('after clonned and sorted');
  for (var element in sortedCars) {
    print(element);
  }
  //get car's name and add to a separated list
  List<String> carNames = cars.map((car) => car.name).toList();
  print(carNames);

  //key-value objects
  final Map<String, Object> user = {
    'name': 'Duy',
    'email': 'nduy12427@gmail.com',
    'age': '21'
  };

  user['name'] = 'Đức Duy';
  print(user);
  print('Begin Task1');
  fetchMovie().then((movies) {
    print('finished Task1');
    print('result 1 = $movies');
  });
  print('Begin Task2');
  fetchMovie().then((movies) {
    print('finished Task2');
    print('result2 = $movies');
  });
}

//Variable
var firstname = "Nguyễn";
String lastname = 'Đức Duy';
var year = "2003";
int yearold = 21;
String fullname = '$firstname $lastname';
String paragraph = '''
Họ và tên: Nguyễn Đức Duy
Tuổi: 21
Năm sinh: 2003
''';
bool isValidInput = firstname.isNotEmpty && lastname.isNotEmpty;
