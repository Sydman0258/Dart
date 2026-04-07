// Create a class named Student with attributes name, roll number,
// and a list of five integer marks.
//  Include methods to calculate the total and average marks, and a method to print whether the student has passed or failed.
//  A student passes only if all marks are 40 or above. Create an object with hardcoded values and call all methods.

class StudentPractice {
  String _name;
  int _rollNo;
  List<int> _marks;

  StudentPractice(this._marks, this._name, this._rollNo);

  String get name => _name;
  int get rollNo => _rollNo;
  List<int> get marks => _marks;

  set name(String value) => _name = value;
  set rollNo(int value) => _rollNo = value;
  set marks(List<int> value) {
    for (var element in value) {
      if (element <= 100 && element >= 0) {
        _marks = value;
      } else {
        print("Invalid marks");
      }
    }
  }

  int getTotal() {
    int sum = 0;
    for (var mark in marks) {
      sum += mark;
    }
    return sum;
  }

  double getAverage() {
    int avg = 0;
    for (var mark in marks) {
      avg = avg + mark;
    }
    return avg / marks.length;
  }

  void display() {
    print("Name: $_name");
    print("Roll_no: $_rollNo");
    print("The total marks obtained is ${getTotal()}");
    print("The average marks is ${getAverage()}");
    for (var mark in marks) {
      if (mark < 40) {
        print("the student has failed");
      } else {
        print("The student has passed");
      }
    }
  }
}

void main() {
  StudentPractice sp = StudentPractice(
    [50, 42, 60, 75, 50],
    "Siddhartha Bhattarai",
    30,
  );

  sp.display();
}
