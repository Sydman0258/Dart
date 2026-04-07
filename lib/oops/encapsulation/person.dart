// class Person {
//   String _name;
//   int _age;
//   bool _status;

//   String get name => _name;
//   int get age => _age;
//   bool get status => _status;

//   set name(String value) => _name = value;
//   set age(int value) => _age = value;
//   set status(bool value) => _status = value;

//   //Constructor
//   // Person({required this.name, required this.age, required this.status});
//   Person({required String name, required int age, required bool status})
//     : _name = name,
//       _age = age,
//       _status = status;

//   // //Named Constructor with only name (default age=0 and status=false)
//   // Person.withName({required this.name}) : age = 0, status = false;

//   // //Named constructor with name and age(default status=false)
//   // Person.withNameAndAge({required this.name, required this.age})
//   //   : status = false;

//   Person.withName({required String name})
//     : _name = name,
//       _age = 0,
//       _status = true;
//   @override
//   String toString() {
//     return "name is $name and he is $age years old ${status ? 'active' : 'inactive'}";
//   }
// }

// void main() {
//   // Person p = Person(name: "Siddhartha", age: 23, status: true);
//   // Person p1 = Person.withName(name: "Siddhartha");
//   // Person p2 = Person.withNameAndAge(name: "Siddhartha", age: 23);
//   // print(p);
//   // print(p1);
//   // print(p2);
//   Person p3 = Person.withName(name: "Siddhartha");

//   p3.name = "Sid";
//   p3.age = 23;
//   p3.status = true;
//   print(p3);
// }
