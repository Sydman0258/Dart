class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void displayName() {
    print("Name : $name");
  }
}

class Employee extends Person {
  double salary;
  Employee(super.name, super.age, this.salary);

  @override
  String toString() {
    return "Name : $name , Age: $age , Salary: $salary";
  }
}

class Staff extends Person {
  String department;
  String address;

  Staff(super.name, super.age, this.department, this.address);
  @override
  String toString() {
    return "Name : $name , Age : $age , Department : $department , Address : $address ";
  }
}

void main() {
  Employee employee = Employee("Siddhartha", 23, 898989);
  Staff staff = Staff("Siddhartha", 23, "C-Suite", "Thimi");
  print(staff);
  staff.displayName();
  print(employee);
  employee.displayName();
}
