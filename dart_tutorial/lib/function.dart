//functions which returns value
int add(int a, int b) {
  return a + b;
}

//functions with named parameters
double multiply({double x = 0, double y = 0}) {
  print('x = $x, y = $y');
  return x * y;
}

//functions which returns "no value"
sayHello([String name = 'world']) {
  print('Hello $name');
}

//function which returns a String
// String getUrl(String serverName, {int port = 8080}) {
//   return 'https://$serverName:$port';
// }

String getDateTimeString({int? day, int? month, int? year}) {
  // ? = optional variable = nullable
  String stringDay = (day ?? 0) < 10 ? '0$day' : '$day';
  String stringMonth = (month ?? 0) < 10 ? '0$month' : '$month';
  // ?? means "default value"
  return '$stringDay-$stringMonth-$year';
}

void doSomeTasks({int param1 = 0, int param2 = 0, Function? completion}) {
  print('Do something');
  completion!(param1 + param2); // ! = make sure that is NOT NULL
}
