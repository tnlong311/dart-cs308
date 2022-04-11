# PLP 2 - Names, Types and Binding

<br />

## Table of contents

0. [Code sourse](https://github.com/tnlong311/dart-cs308/blob/main/documents/2_name_convention.dart)
1. [Basic data types](#data-types)
2. [Variables](#variables)
3. [Operations](#operations)
4. [Reserved keywords](#reserved)
5. [Naming variables](#naming)
6. [Types](#types)
7. [Restrictions](#restrictions)
8. [References](#references)


<br />


## Basic data types  <a name="data-types"></a>

### Declaration

In Dart, most variables don’t need explicit types. We can declare a general variable using the keyword `var`:

```dart
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
```

Variables in Dart can also be declared explicitly:

```dart
// explicitly declaring
String car = "Tesla";
int price = 10000;
double seat = 2.5;
num windows = 4;
bool isCool = true;
```

Note that once a variable is declared, either explicitly or generally, it will be assigned to its data type and cannot be changed laterly:

```dart
int price1 = 1000;
price1 = 10.5; // illegal
double price1 = 10.5; // also illegal

var price2 = 1000; // assigned  to int
price2 = 10.5; // illegal

num price3 = 22; // a special type, can be both int and double
price3 = 10.5; // accepted
```

<br />

### Built-in types

Here are the built-in data types in Dart:

- [Numbers](https://dart.dev/guides/language/language-tour#numbers) (`int`, `double`. `num`)
- [Strings](https://dart.dev/guides/language/language-tour#strings) (`String`)
- [Booleans](https://dart.dev/guides/language/language-tour#booleans) (`bool`)
- [Lists](https://dart.dev/guides/language/language-tour#lists) (`List`, or *arrays*)
- [Sets](https://dart.dev/guides/language/language-tour#sets) (`Set`)
- [Maps](https://dart.dev/guides/language/language-tour#maps) (`Map`)
- [Runes](https://dart.dev/guides/language/language-tour#characters) (`Runes`; often replaced by the `characters` API)
- [Symbols](https://dart.dev/guides/language/language-tour#symbols) (`Symbol`)
- The value `null` (`Null`)

Besides, there are special types in Dart:

- `Object`: The superclass of all Dart classes except `Null`.
- `Future` and `Stream`: Used in [asynchrony support](https://dart.dev/guides/language/language-tour#asynchrony-support).
- `Iterable`: Used in [for-in loops](https://dart.dev/guides/libraries/library-tour#iteration) and in synchronous [generator functions](https://dart.dev/guides/language/language-tour#generator).
- `Never`: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
- `dynamic`: Indicates that you want to disable static checking. Usually you should use `Object` or `Object?` instead.
- `void`: Indicates that a value is never used. Often used as a return type.

<br />

## Variables <a name="variables"></a>

As mentioned above, Dart’s variables can be declared generally using `var` or explicitly using a built-in type keyword.

There are some special cases for variables in Dart.

<br />

### Null value

If a variable is intitiallized as null, there must be a `?` keyword:

```dart
int? line;
int? edge = null;
```

There is more to null safety in Dart, which will not be mentioned in scope of this project. View [here](https://dart.dev/codelabs/null-safety) for full documentation. 

<br />

### Late variables

The `late` keyword can be used when assigning a value to a non-null variable later in the code:

```dart
late int age;

void main() {
  age = 11
  print(age);
}
```

<br />

## Operations <a name="operations"></a>

### Syntax

Dart supports most commonly operations used in other languages like C, C++ or Javascript. 

These includes:

- Arithmetic operators:
    - `+ - * /`
    - `%` get remainder
    - `~/` get integer of division
- Comparision operators:
    - `== != > < >= <=`
    - `identical()` to check for exact match
- Type test: `is is!`
- Logical operators: `!expr || &&`
- Bitwise and shift operators
- Conditional expression: equivelant to if-else statement
    - `condition ? expr1 : expr2` if condition is true, returns `expr1`, otherwise `expr2`
    - `expr1 ?? expr2` returns `expr1` if it is non-null, else `expr2`

View the full list of operations [here](https://dart.dev/guides/language/language-tour#operators).

<br />

### Operation experimentation

1. add `int` and `double`

```dart
int num1 = 10;
double num2 = 4.5;
print("num1 + num2 = ${num1 + num2}"); // num1 + num2 = 4.5
```

Dart establishs a widening conversion when doing athrimetic operations. Adding an `int` to a `double` results in another `double`.

Evenwhen the `double` variable is rounded, it is still remained its type:

```dart
double num3 = 1.0;
print('num3 = $num3'); // num3 = 1.0
```

1. add `int` and `String`

Dart is strongly bound to type assignment. Thus, adding an `int` to a `String` will cause error:

```dart
int num4 = 44;
var x = num4 + "hello";
print("x: $x"); // illegal
```

1. division

Though one `int` is divisable to another `int`, the result is still converted to `double`:

```dart
int num5 = 4;
int num6 = 8;
print("num5 + num6 = ${num6 / num5}"); // num5 + num6 = 2.0
```

If we try to force cast the division to `int`, it will generate an error *“A value of type 'double' can't be assigned to a variable of type 'int’”*

```dart
int num7 = num6 / num5; //illegal
```

1. put different data types in the same list

This is still allowed if we do not assigned a specific type to list element:

```dart
List list1 = [1, 2, 'hello', 'world'];
print("list1: $list1"); // list1: [1, 2, hello, world]
```

Else, this will generate an error:

```dart
List<int> list2 = [1, 2, 'hello', 'world']; //illegal
```

1. cast data type

As described above, we cannot change the data type after a variable is initialized. 

```dart
int price1 = 1000;
double price1 = 10.5; // illegal
```

<br />

### Mixed operations

Since Dart has tight date type rules, only a few mixed operations are allowed. 

For instance, we can have a mixed arithmetic and bitwise operations:

```dart
print("Mixed operation: ${(3 << 3) + 15}"); // Mixed operation: 39
```

<br />

## Reserved keywords <a name="reserved"></a>

According to the list provided by Dart’s official documentation (assessed on 6th Mar 22), Dart has 63 reserved keywords. 

![image](https://user-images.githubusercontent.com/69509154/156923788-31b2bc54-6a70-4200-bcb1-9c69f0eefc18.png)

The sort page can be found [here](https://dart.dev/guides/language/language-tour#keywords).

These words must not be used as identifiers, except for some, which are marked with superscript:

- superscript 1: contextual keywords - are used in some contexts, not all
- superscript 2: built-in identifiers - can be used as both identifier and reserved word
- superscript 3: asynchronous support - cannot be used in identifiers expressed as async function.

<br />

## Naming variables <a name="naming"></a>

There are a handful of factors in Dart language that has different naming requirement and convention, such as Class, Collection, Object, function, variables, comments, files and so on. 

In scope of the project, we only assess naming requirement and convention of Dart variables. 

<br />

### Naming requirement

Dart’s variables must consist of only `a-z`, `A-Z`, `0-9` or underscore `_`. Any combination of these characters are allowed. 

For example, a variable named as follows is technically legal:

```dart
int numasdfSSSDEEXX___10;
```

<br />

### Naming convention

> "Over the past several years, we’ve written a ton of Dart code and learned a lot about what works well and what doesn’t. We’re sharing this with you so you can write consistent, robust, fast code too.”
> 

The Dart community has come up with a convention for coding style. They are well documented on Dart’s official website, which can be found [here](https://dart.dev/guides/language/effective-dart). 

In terms of variables, they should be descriptive, and named without an underscore `_` and following the `lowerCamelCase`. 

For example:

```dart
var beautifulName3; 
```

<br />

## Types <a name="types"></a>

### Statically typed

Here is a simple explanation of what stactically typed and dynamically typed means:

- static: when compiled, the defined variables and expressions cannot change.
- dynamic: variables and expressions can recieve different values during compile time.

With this definition, **Dart is statically typed language**. 

As illustrated in the codes above, Dart variables cannot change date type or values once initialized. 

However, Dart does provide dynamic type, using the `dynamic` keyword declaration. Even though the `dynamic` itself is static, meaning a variable is assigned to `dynamic` at the beginning of the compile and cannot change, it allows the variable to adjust during compiling. 

<br />

### Explicitly and implicitly typed 

**Dart is both explicitly and implicitly typed language.** As described in the Basic date types part, Dart provides flexibility for variables to be typed either explicitly or implicitly.

```dart
int name1; // explicitlly typed
var name2; // implicitlly typed
```

<br />

### Immutability and mutability

Most variables in Dart are immutable when they are created, in the sense that they cannot change their type and values once assigned.

What about a variable is declared, yet not assigned any values? This is when `const` and `final` comes in to discuss about Dart’s immutability and mutability.

- a variable declared with `const` requires a value at compile time

```dart
const name1; //illegal, must be assigned to a value
const name2 = 123; // ok

print("name2: $name2"); //ok
```

- whereas, a variable declared with `final` requires a value at its first use

```dart

final name3; // ok

print("name3: $name3"); // illegal, must have a value when being called

name3 = "hello";
print("name3: $name3"); // ok
```

With this example, Dart is mutable in the way that it can be assigned to a value after initiated (with the `final` keyword). We can also use `late` for mutabiliy:

```dart
late int age;
  age = 13;
  print("age: $age"); // age: 13
```

<br />

## Restrictions <a name="restrictions"></a>

In summary, Dart has some limitations relating to date types and variables:

- Dart is statically typed, in most cases, a variable cannot change its data type or value after innitialized.
- Date type converting is prohibited during declarations and operations.
- Null-safety is strictly implemented.

<br />

## References <a name="references"></a>

All researchs on the Dart language are referenced from Dart documentation page: [https://dart.dev/guides](https://dart.dev/guides).
