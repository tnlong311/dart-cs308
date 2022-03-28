void main() {
  condition_statement();
  dangling_else();
  short_circuit();
}

void condition_statement() {
  // bool data type must not be any other of true|false
  var str = 'abc';
  if (str == true) {
    print('String is not empty');
  } else {
    print('Empty String');
  }

  print("");

  // conditional statements
  int num = 10;
  if (num > 9) {
    print("Condition 1 is true");
  } else if (num >= 10) {
    print("Condition 2 is true");
  } else {
    print("All the conditions are false");
  }

  print("");

  // multi-condition if-else statement
  int num2 = 10;
  if (num2 > 4 && num2 < 10) {
    print("Condition 'and' is true");
  }
  if (num2 > 4 || num2 < 10) {
    print("Condition 'or' is true");
  }

  print("");

  // nested condition if-else statement
  if (true) {
    print("Condition goes here");
    if (false) {
      print("Condition goes up");
    } else {
      print("Condition goes down");
    }
  }

  print("");

  // ternary operator
  int num3 = 100;
  (num3 > 20)
      ? print("Num is greater than 20")
      : print("Num is less than or equal to 20");

  print("");

  // nul-check operator
  var str1 = null ?? "right value";
  var str2 = "left value" ?? "right value";
  print("str1: " + str1);
  print("str2: " + str2);

  print("");

  // switch-case statement
  int num4 = 2;
  switch (num4) {
    case 1:
      print("num is 1");
      break;
    case 2:
      print("num is 2");
      break;
    case 3:
      print("num is 3");
      break;
    default:
      print("no matches");
  }

  print("");
}

void short_circuit() {
  bool func1() {
    print("Hello");
    return false;
  }

  bool func2() {
    print("World");
    return true;
  }

  if (func1() && func2()) {
    print("I'm here");
  }

  print("");

  if (func1() || func2()) {
    print("I'm here");
  }
}

void dangling_else() {
  int num = 1;
  if (num == 1) {
    num++;
  }

  if (num > 10) {
    num = 0;
  } else {
    num += 10;
  }

  print(num);
  print("");
}
