class Person {
  final String name;
  final int age;
  final bool status;

  //Constructor
  Person({required this.name, required this.age, required this.status});

  Person.withNameAndAge({required this.name, required this.age})
    : status = false;

  Person.withName({required this.name}) : age = 0, status = true;

  @override
  String toString() {
    return "name is $name and he is $age years old ${status ? 'active' : 'inactive'}";
  }
}

void main() {
  Person p = Person(name: "Siddhartha", age: 23, status: true);
  Person p1 = Person.withName(name: "Siddhartha");
  Person p2 = Person.withNameAndAge(name: "Siddhartha", age: 23);
  print(p);
  print(p1);
  print(p2);
}
