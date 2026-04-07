class Student {
  int _marks = 0;

  int get marks => _marks;
  set marks(int value) {
    if (value >= 0 && value <= 100) {
      _marks = value;
    } else {
      print("Invalid marks !!!");
    }
  }
}

void main() {
  Student s = Student();
  s.marks = 85;
  print(s.marks);
  s.marks = 101;
}
