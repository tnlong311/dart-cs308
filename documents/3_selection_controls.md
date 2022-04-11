### Table of contents

0. [Code source](https://github.com/tnlong311/dart-cs308/blob/main/documents/3_selection_control_statement.dart)
1. [Boolean data type](#data-types)
2. [Conditional statements](#conditions)
    1. If-else statement
    2. Ternary operator
    3. Null-check operator
    4. Switch-case statement
3. [More examples](#examples)
4. [Dangling else problem](#dangling-else)
5. [Short circuit](#short-circuit)
6. [References](#references) 

<br />

### Boolean data type <a name="data-types"></a>

In Dart, the keyword `bool` is used to defined a variable with data type of boolean. `bool` takes only two values: `true` and `false`. 

Unlike common languages like Python or Javascript, Dart does not convert “1” or “abc” back to boolean type. 

For example, this will generate the error “A value of type 'String' can't be assigned to a variable of type 'bool’ ”:

```dart
var str = 'abc'; 
if(str) { //illegal
   print('String is not empty'); 
} else { 
   print('Empty String'); 
}
```

Whereas these lines of code will print out “String is not empty” in Python, in Dart it will print out “Empty String”:

```dart
var str = 'abc'; 
if(str == true) { 
   print('String is not empty'); 
} else { 
   print('Empty String'); 
}
```

In other words, `bool` accept **only** `true` or `false` as its values.

<br />

### Conditional statements <a name="conditions"></a>

**The if-else statements**

Similar to other common languages, Dart provides the basic conditional statement with `if ... else` keywords.

A conditional statement tree starts with `if`, wrapped in a condition, follows by several`else if` blocks, and ends with the `else` block. Dart delimits code blocks under each condition in selection control within the open and close brackets `{` `}`.

The structure of the conditional statement is as follows:

```dart
if (condition1) {
  // body of if
}
else if {
  // body of else if
} 
...
else {
	// body of else
}
```

Dart will check for the conditions in chronological order, if any of the `if/else if` condition is `true`, the program will execute everything inside of the conditional block. Otherwise, the program will move to the end and execute the body inside of the `else` block.

The following code is an example of the if-else statement in Dart:

```dart
int num = 10;
if (num > 9) {
  print("Condition 1 is true");
} else if (num >= 10) {
  print("Condition 2 is true");
} else {
  print("All the conditions are false");
  }
// output: 
// Condition 1 is true
```

Several `if` keywords standing next to each other counts as separated conditional trees:

```dart
int num = 10;
if (num > 9) {
  print("Condition 1 is true");
} 
if (num >= 10) {
  print("Condition 2 is true");
}
// output: 
// Condition 1 is true
// Condition 2 is true
```
<br />

**Ternary operator**

Dart introduces a very useful conditional operator using the `?` keyword. The syntax is as follows:

```dart
condition ? expr1 : expr2
```

If the `condition` is `true`, then this line of code will return `expr1`, and return `expr2` otherwise.

This is called ternary operator, a special and widely-used feature in ReactJS framework. 

For example:

```dart
// ternary operator
int num3 = 100;
(num3 > 20) 
? print("Num is greater than 20")
: print("Num is less than or equal to 20");
// output: 
// Num is greater than 20
```

<br />

**Null-check operator**

A slightly modified version of the ternary operator is the operator `??`. The syntax is as follows:

```dart
expr1 ?? expr2
```

If `expr1` is not null, the code will return `expr1`, otherwise return `expr2`

For example:

```dart
// nul-check operator
var str1 = null ?? "right value";
var str2 = "left value" ?? "right value";
print("str1: " + str1);
print("str2: " + str2);
// output:
// str1: right value
// str2: left value
```

<br />

**Switch-case statement**

The switch-case checks whether a variable matches with all case expressions. The syntax is as follows:

```dart
switch(variable_expression) { 
   case constant_expr1: { 
      // statement 1; 
   } 
   case constant_expr2: { 
      //statement 2; 
   } 
	 ...
   default: { 
      //statement default;  
   }
}
```

The code will check the `variable_expression` for equivalence with all `constant_expr1`, `constant_expr2`, and so on. If no `case` matches, it will execute the `default` block.

For example:

```dart
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
// output:
// num is 2
```

Note that in Dart, we must use the keyword `break` at the end of each `case` block in order to get out the checking progress right after a match.

<br />

### More examples of conditional statements <a name="examples"></a>

**Multi-condition if-else statement**

Dart supports multiple conditions in one conditional block. The “or” conditional bridge with `||` and the “and” with `&&`

```dart
// multi-condition if-else statement
int num2 = 10;
ifif (num2 > 4 && num2 < 10) {
  print("Condition 'and' is true");
}
if (num2 > 4 || num2 < 10) {
  print("Condition 'or' is true");
}
// output: 
// Condition 'or' is true
```

<br />

**Nested if-else statement**

Another if-else statement can be put into a conditional block. For example:

```dart
// nested condition if-else statement
if (true) {
  print("Condition goes here");
  if (false) {
    print("Condition goes up");
  } else {
    print("Condition goes down");
  }
}
// output: 
// Condition goes here
// Condition goes down
```

<br />

### Dangling else problem <a name="dangling-else"></a>

The dangling else problem, or dangling else ambiguity, is a common bad-coding practice when implementing several if-else statements.

Consider this code:

```dart
if (condition) {
}
if (condition 1) {
}
 if (condition 2) {
}
   else
   {
       }
```

The last `else` block is ambiguous because it can not be identified clearly which `if` condition the `else` belongs to.

For example”

```dart
int num = 1;
if (num == 1) {
  num++;
}
if (num > 0) {
  num = 0;
} 
else {
  num += 10;
}
```

To deal with this problem, Dart chooses the closest `if` to the `else` statement. 

For observation purpose, the above code can be spaced out as follows:

```dart
int num = 1;
if (num == 1) {
  num++;
}

if (num > 10) {
  num = 0;
} else {
  num += 10;
}
// num = 12
```

The code will check the first `if`, then increment num by 1. Then it goes to the second `if` and meets the `else` condition. Thus, the final result will be num = 12.

<br />

### Short circuit <a name="short-circuit"></a>

Dart uses short circuit evaluation with conditional statements. This happends when the program only checks some parts of the multi condition inside the `if` statement.

For example:

```dart
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
// output:
// Hello
```

The code checks `func1`, which returns false, and concludes that the whole `and` condition is false. Thus it skips the rest of the conditions. Accordingly, the result of the above code is just one line with the string “Hello” printed out. 

Another example when Dart checks all conditions in order to evaluate the multi-condition statement:

```dart
bool func1() {
  print("Hello");
  return false;
}

bool func2() {
  print("World");
  return true;
}

if (func1() || func2()) {
  print("I'm here");
}

// output:
// Hello
// World
// I'm here
```

<br />

### References <a name="references"></a>

(1) Geeksforgeek, “Dangling-else Ambiguity”, last retrieved on 28th March 2022,  [https://www.geeksforgeeks.org/dangling-else-ambiguity/](https://www.geeksforgeeks.org/dangling-else-ambiguity/)
