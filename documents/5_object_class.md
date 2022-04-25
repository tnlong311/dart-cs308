# PLP5 - Object and Classes

<br />

## Table of contents

0. [Code source](https://github.com/tnlong311/dart-cs308/blob/main/documents/5_object_class.dart)
2. [Class](#class)
3. [Object](#object)
4. [Inheritance](#inheritance)
5. [Reference](#reference)

<br />

## Class <a name="class"></a>

Dart is an object-oriented programming language. In Dart, class defines an object. It contains object attributes, contructors, methods and so on. 

<br />

### Naming

Standardized to other OOP languages, Dart follows `UpperCaseCamel` naming convention for classes.

An example to define a class:

```dart
class Person {
  int age = 0;
  int height = 0;
  String name 'Default';
}
``` 

<br />

### Contructor

The class `Person` is defined with attributes `age, height, name`. We must also define a constructor for it:

```dart
class Person {
  int age = 0;
  int height = 0;
  String name 'Default';

  Person(age, height, name) {
    this.age = age;
    this.height = height;
    this.name = name;
  }
}
```

In this case, the attributes must have default values, else it will create a *not_initialized_non_nullable_instance_field* ****error. Read more about the error [here](https://dart.dev/tools/diagnostic-messages?utm_content=not_initialized_non_nullable_instance_field#not_initialized_non_nullable_instance_field). 

Since this way of contructing object is so common, Dart provides a shortcut syntax for class (with attributes) contructor:

```dart
class Person {
  int age;
  int height;
  String name;

  Person(this.age, this.height, this.name);
}
```

One point to note, unlike Java, Dart does not allow overloading contructor. This means that we can only declare one contructor for one class. 

For instance, this will generate error:

```dart

class Person {
  int age;
  int height;
  String name;
	
	Person();
//Error: The unnamed constructor is already defined
  Person(this.age, this.height, this.name);
}
```

<br />

### Function

An example to declare functions in Dart:

```dart
class Person {
  int age;
  int height;
  String name;

  Person(this.age, this.height, this.name);

	sayHello() {
    print('Hello, $name');
  }
}
```

<br />

### Standard methods

Dart has a few built-in methods. For objects, there is only one standard function, which is `toString()` method. This function is used to return the information of an object.

We can call `toString()` without defining. Should we want to re-define the default behavior, we can use the keyword `@override`. 

For example:

```dart
class Person {
  int age;
  int height;
  String name;

  Person(this.age, this.height, this.name);

	@override
  String toString() {
    return "Person $name is $age years old, $height height.";
  }
}
```

<br />

## Object <a name="object"></a>

Having declared a class, now we can call it to initiate objects in Dart.

The way to do it is simple:

```dart
void main() {
  Person person1 = new Person(13, 150, 'An');
}
```

We can also use object’s functions, and get or modify attributes: 

```dart
void main() {
  Person person1 = new Person(13, 150, 'An');

  print(person1.toString());

  person1.name = 'Huy';
  person1.sayHello();
}
```

<br />

## Inheritance <a name="inheritance"></a>

Dart allows inheritance for at most one class. To mark a class as inheriting another class, we use the keyword `extends`.

For example:

```dart
class Male extends Person {
  int age;
  int height;
  String name;

  Male(this.age, this.height, this.name) : super(age, height, name);

  sayHello() {
    print('Hello, Mr. $name');
  }
}
```

In the above code, the child class (or subclass) does not inherit its parent’s constructor. Thus, we have to initialize it following the `super constructor`.

To undestand how exactly parent and subclass are created, read more in [this](https://www.geeksforgeeks.org/super-constructor-in-dart/) article.

<br />

## Reference <a name="reference"></a>

(1) Turtorialspoint, “Dart classes and object”,  last retrieved on 25th April 2022,

[https://www.javatpoint.com/dart-classes-and-objec](https://www.javatpoint.com/dart-classes-and-objec)t

(2) GeeksforGeeks, “Super contructor in Dart”, ast retrieved on 25th April 2022, 

[https://www.geeksforgeeks.org/super-constructor-in-dart/](https://www.geeksforgeeks.org/super-constructor-in-dart/)