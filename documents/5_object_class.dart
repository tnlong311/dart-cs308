void main() {}

class Person {
  var age;
  var height;
  var name;

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
  var age;
  var height;
  var name;

  Male(this.age, this.height, this.name);
}
