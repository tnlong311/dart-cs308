void main() {
  Person person1 = new Person(13, 150, 'An');
  Male person2 = new Male(12, 169, 'Long');

  print(person1.toString());

  person1.name = 'Huy';
  person1.sayHello();

  person2.sayHello();
}

class Person {
  int age;
  int height;
  String name;

  Person(this.age, this.height, this.name);

  @override
  String toString() {
    return "Person $name is $age years old, $height height.";
  }

  sayHello() {
    print('Hello, $name');
  }
}

class Male extends Person {
  int age;
  int height;
  String name;

  Male(this.age, this.height, this.name) : super(age, height, name);

  sayHello() {
    print('Hello, Mr. $name');
  }
}
