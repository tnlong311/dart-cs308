void main() {
  forLoops();
  whileLoops();
  function();
  recursiveFunction();
  passByValue();
}

void passByValue() {
  Object x = [0, 1];
  Object y = x;

  Object z = passObject(y);

  print(x);
  print(y);
  print(z);

  print('');

  y = [4, 5];
  print(x);
  print(y);
  print(z);
}

Object passObject(Object k) {
  k = [3];
  return k;
}

void recursiveFunction() {
  print('Factorial: ');
  print('5! = ${factorial(5)}');

  print('');
}

int factorial(number) {
  if (number == 0) {
    // base case
    return 1;
  }

  // recursive
  return (number * factorial(number - 1));
}

void function() {
  print('Function declaration:');
  helloWorld();

  String str = helloWorldString();
  print(str);

  print('');

  int x = 5;
  int y = 10;

  int m = multiplies(x, y);
  print(m);

  print('');

  int z = 3;
  String k = 'wow';

  dynamicFunc(z, k);

  print('');

  int a = 3;
  int b = 7;
  List lst = doubleValues(a, b);
  print(lst);

  print('');

  int c = 10;
  String s = "Good day";
  List lst2 = dynamicReturn(c, s);
  print(lst2);

  print('');
}

List<dynamic> dynamicReturn(int x, String s) {
  return [x * 2, s + "!!!"];
}

List<int> doubleValues(int x, int y) {
  return [x * 2, y * 2];
}

int multiplies(int x, int y) {
  return x * y;
}

void dynamicFunc(int x, String y) {
  print('String $y and integer $x');
}

void helloWorld() {
  print('hello');
}

String helloWorldString() {
  print('world');
  return 'a word';
}

void whileLoops() {
  print('While loops:');
  // basic while loop
  int num = 0;
  while (num < 5) {
    print(num);
    num++;
  }

  // do while loop
  int num2 = 0;
  do {
    print(num2);
    num2++;
  } while (num2 < 5);

  int num3 = 5;
  // code block will not be executed
  while (num3 < 5) {
    print('while loop excecuted');
    print(num3);
    num3++;
  }

  // execute the block once then stop the loop
  do {
    print('do while loop excecuted');
    print(num3);
    num3++;
  } while (num3 < 5);

  // // infinite loop
  // while (true) {
  //   print('never give up');
  // }
  // // also infinite
  // while (num < 5) {
  //   print(num);
  // }
  print('');
}

void forLoops() {
  print('For loops:');
  // 1 - basic for
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  List lst = [1, 3, 5, 7, 9];
  // 2 - for ... in
  for (int element in lst) {
    print(element);
  }

  // 3 - forEach
  lst.forEach((element) {
    print(element);
  });

  print('');

  // print even numbers 0 2 4 ... 10
  for (int i = 0; i <= 10; i = i + 2) {
    print(i);
  }

  // print random numbers in list
  List randomNumbers = [7, 90, 2, 3, 7, 0];
  for (int k in randomNumbers) {
    print(k);
  }

  Map<String, int> m = {'A': 1, 'B': 2, 'C': 3};

  m.forEach((key, value) {
    print('$key has count of $value');
  });
}
