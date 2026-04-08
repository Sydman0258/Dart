class Faculty {
  String name;
  int age;
  String address;

  Faculty(this.name, this.age, this.address);

  void displayDetails() {
    print("Name : $name , Age : $age , Address : $address");
  }
}

class FullTimeFaculty extends Faculty {
  double monthlySalary;

  FullTimeFaculty(super.name, super.age, super.address, this.monthlySalary);

  double calculateYearlySalary() {
    return monthlySalary * 12;
  }

  @override
  String toString() {
    return "Name : $name , Age :$age , Address : $address , Monthly Salary : ${calculateYearlySalary()}";
  }
}

class PartTimeFaculty extends Faculty {
  double hourlySalary;
  int hoursPerWeek;
  PartTimeFaculty(
    super.name,
    super.age,
    super.address,
    this.hourlySalary,
    this.hoursPerWeek,
  );

  double weeklySalary() {
    return hourlySalary * hoursPerWeek;
  }

  double yearlySalary() {
    return weeklySalary() * 52;
  }

  @override
  String toString() {
    return "Name : $name , Age :$age , Address : $address , Weekly Salary: ${weeklySalary()}, Yearly Salary : ${yearlySalary()} ";
  }
}

void main() {
  FullTimeFaculty fulltime = FullTimeFaculty("Rahul", 28, "Mumbai", 14400);
  PartTimeFaculty parttime = PartTimeFaculty("Rahul", 28, "Mumbai", 100, 10);

  print(fulltime);
  print(parttime);
  print("Yearly Salary : ${fulltime.calculateYearlySalary()}");
  print("Monthly Salary: ${parttime.weeklySalary()}");
}
