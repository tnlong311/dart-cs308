void data_type() {
  // general data declaring
  var name = 'Ngoc Long'; //string
  var age = 22; //int
  var height = 176.77; //float
  var enrolled = true; //boolean
  var courseList = ["cs207", "cs300", "math103"]; //array
  var image = {
    'tags': ['student'],
    'url': '//path/to/student.jpg'
  }; //dictionary

  // explicitly declaring
  String car = "Tesla";
  // int price = 10000;
  double seat = 2.5;
  num windows = 4;
  bool isCool = true;

  // int price1 = 1000;
  // price1 = 10.5; // illegal
  // double price1 = 10.5; // also illegal

  // var price2 = 1000; // assigned  to int
  // price2 = 10.5; // illegal

  // num price3 = 22; // a special type, either int or double
  // price3 = 10.5; // accepted
}

void operations() {
  int? line;
  int? edge = null;

  int num1 = 10;
  double num2 = 4.5;
  print("num1 + num2 = ${num1 + num2}"); // num1 + num2 = 4.5

  double num3 = 1.0;
  print('num3 = $num3'); // num3 = 1.0

  // int num4 = 44;
  // var x = num4 + "hello";
  // print("x: $x"); // illegal

  int num5 = 4;
  int num6 = 8;
  print("num5 + num6 = ${num6 / num5}"); // num5 + num6 = 2.0

  // int num7 = num6 / num5; //illegal

  List list1 = [1, 2, 'hello', 'world'];
  print("list1: $list1"); // list1: [1, 2, hello, world]

  // List<int> list2 = [1, 2, 'hello', 'world']; //illegal

  int numasdfSSSDEEXX___10 = 100;
  print("very ugly name = $numasdfSSSDEEXX___10");

  print("Mixed operation: ${(3 << 3) + 15}"); // Mixed operation: 39
}

void language_type() {
  // const name1; //illegal, must be assigned to a value
  const name2 = 123; // ok

  print("name2: $name2"); //ok

  final name3; // ok

  // print("name3: $name3"); // illegal, must have a value when being called

  name3 = "hello";
  print("name3: $name3"); // ok

  late int age;
  age = 13;
  print("age: $age"); // age: 13
}

void main() {
  data_type();
  operations();
  language_type();
}
