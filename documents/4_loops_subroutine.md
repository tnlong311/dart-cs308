# PLP 4 - Loops and Subroutines

"Being able to repeat code through loops and functions (which can be called more than once and sent different information each time) is a huge part of most programming languages.  However, different programming languages have different kinds of loops, and there are a lot of variations in how functions are declared, where they have to be put, how they accept parameters, and how the function output is returned."

<br />


## Table of contents

0. [Code source](https://github.com/tnlong311/dart-cs308/blob/main/documents/4_loops_subroutine.dart)
1. [Loops](#loops)
    1. for loop
        1. basic for
        2. for...in
        3. forEach
    2. while loop
    3. do...while loop
2. [Functions](#functions)
3. [Pass-by value](#passby)
4. [Reference](#reference)

<br />

## Loops <a name="loops"></a>

Loop statement is one of the most fundamental components in a programming languages. Loop statements uses to excute a repeated groups of codes. 

- Loops can be definite, when it runs a finite number of times.
- Loops can be indefinite, when it keeps running until a certain condition is met. Thus, we must be aware of code running forever with this kind of loop statement.

The below figure is an overview of different types of loops in Dart:

![image](https://user-images.githubusercontent.com/69509154/162805036-f997cc36-9440-4d1c-a5e2-772daf05e822.png)


<br />

### for loop

Here are three different ways to write a `for loop` in Dart:

```dart
// 1 - basic for
for (int i = 0; i < 5; i++) {
  print(i);
}

List lst = [0, 1, 2, 3, 4];
// 2 - for ... in
for (int element in lst) {
  print(element);
}

// 3 - forEach
lst.forEach((element) {
  print(element);
});
```

In (1), the code gives `i` a initial value of 0, then increase it by 1 after every loop. At the beginning of each loop, it will check if `i` still meets the conditions, in this case, (i < 5). If not, the loop ends.

Next, (2) and (3) are almost similar loops. They basically let the `element` variable be each of the values in the list in each loop block. 

All three code produces the same output, which is printing out numbers from 0 to 4, line by line.

<br />

***Then why do we even have different kinds of for loop anyway?***

Each type of loop has different usage according to how we want to run the repeating code block. Understand all of them is important to deal with different situation in practice.

For intance, the basic `for loop` (1) is used to write loops that have a change pattern:

```dart
// print even numbers 0 2 4 ... 10
for (int i = 0; i <= 10; i = i + 2) {
  print(i);
}
```

(2) is used to loop through a `Iterable` data type, most commonly is `List`. It is useful when a list does not have a pattern:

```dart
// print random numbers in list
List randomNumbers = [7, 90, 2, 3, 7, 0];
for (int k in randomNumbers) {
  print(k);
}
```

If we want to loop through a data type that is not `Iterable`, for example, a `Map`, we can use `forEach` (3) loop statement:

```dart
Map<String, int> m = {'A': 1, 'B': 2, 'C': 3};

// prints the pair of key - value in the map
m.forEach((key, value) {
  print('$key has count of $value');
});
```

Note that the above code cannot be done with `for...in.` because of data type reason.

<br />

### while loop

`while loop` runs the block of code repeadly until it meets a condition specified in the statement.

For instance:

```dart
// basic while loop
int num = 0;
while (num < 5) {
  print(num);
  num++;
}
// prints out numbers from 0 to 4
```

Be careful when using `while loop`. Not updating the variable in the loop condition or having a condition that is always true can lead the code block to run forever.

Avoid writing loops like these:

```dart
// infinite loop
while (true) {
  print('never give up');
}

// also infinite
while (num < 5) {
  print(num);
}
```

<br />

### do...while loop

The `do..while loop` us exactly the same as the basic `while loop`, except that it excutes the code block first, then checks the loop condition later.

For example:

 

```dart
// do while loop
int num2 = 0;
do {
  print(num2);
  num2++;
} while (num2 < 5);
// prints out numbers from 0 to 4
```

To inspect the difference between `while` and `do...while`, consider this code:

```dart
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
```

Because of the difference in excecuting/checking orders, the `do...while` loop executes the code once while the `while` loop does not exceute at all.

<br />

## Functions <a name="functions"></a>

### Basic declaration

The syntax for declaring a function in Dart:

```dart
DataType function_name(){  
   //statements  
   return (DataType) value;  
}
```

A function can have no return line, in which the `DataType` here changes to `void`

Examples:

```dart
void helloWorld() {
  print('hello');
}

String helloWorldString() {
  print('world');
  return 'a word';
}
```

To call the declared function, simply call its name in main:

```dart
void main() {
	helloWorld();
  String str = helloWorldString();

  print(str);
}
```

<br />


### Passing parameters

Parameters can be passed through a function:

```dart
void main() {
	int x = 5;
  int y = 10;
	
	// returns 50
  int m = multiplies(x, y);
  print(m);
}

int multiplies(int x, int y) {
  return x * y;
}
```

In Dart, we can pass in variables with dirrent types:

```dart
void dynamicFunc(int x, String y) {
  print('String $y and integer $x');
}
```

<br />

### Return multiple values

We cannot directly return multiple values in Dart. A way to work around that is to return a data type that contains the desired returning values. 

For example:

```dart
void main() {
	int a = 3;
  int b = 7;

  List lst = doubleValues(a, b);
  print(lst); // prints out [6, 14]
}

List<int> doubleValues(int x, int y) {
  return [x * 2, y * 2];
}
```

Or even return values with different data types, using Dart’s special `dynamic` data type:

```dart
void main() {
	int c = 10;
  String s = "Good day";

  List lst2 = dynamicReturn(c, s);
  print(lst2); // prints out [20, Good day!!!]
}

List<dynamic> dynamicReturn(int x, String s) {
  return [x * 2, s + "!!!"];
}
```

<br />

### Recursive function

A recursive function is a function that calls itself. It commonly has a check at the beginning of the code to stop the recursion, called base case.

For example:

```dart
void main() {
	// prints out factorial of 5
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
```

<br />

## Pass-by value <a name="passby"></a>

Dart does not pass by reference, instend, it passes by value.

Consider the code below:

```dart
void main() {	
	Object x = [0, 1];
  Object y = x;

  Object z = passObject(y);
	
	// 1st passing
  print(x);
  print(y);
  print(z);
	
  print('');
	
	// 2nd passing
  y = [4, 5];
  print(x);
  print(y);
  print(z);
}

Object passObject(Object k) {
  k = [3];
  return k;
}
```

Initially, x and y is assigned to the same Object, [0,1]. After that, y is passed through the passObject() function, in which the parameter is assigned to a new Object, [0]. 

However, after the code, y does not change its original assigned value. The output after the 1st passing it x=[0,1], y=[0,1], z=[3].

To demonstrate further Dart’s pass by value, after the 2nd passing, although y is assigned to a new Object in the main scope, x still does not change. The output after the 2nd passing it x=[0,1], y=[4,5], z=[3].

Output:

```dart
[0, 1]
[0, 1]
[3]

[0, 1]
[4, 5]
[3]
```

<br />


## Reference <a name="reference"></a>

(1) Turtorialspoint, “Dart programming loops”,  last retrieved on 12th April 2022,

[https://www.tutorialspoint.com/dart_programming/dart_programming_loops.htm](https://www.tutorialspoint.com/dart_programming/dart_programming_loops.htm)
