abstract class Shape {
  double calculateArea();
  double calculatePerimiter();

  void printShape() {
    print("Area : ${calculateArea()} , Perimeter : ${calculatePerimiter()} ");
  }

  bool isLargerThan(Shape none) {
    return calculateArea() > none.calculateArea();
  }
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return (22 / 7) * radius * radius;
  }

  @override
  void printShape() {
    print("Area : ${calculateArea()} , Perimeter : ${calculatePerimiter()} ");
  }

  @override
  double calculatePerimiter() {
    return 2 * (22 / 7) * radius;
  }

  @override
  bool isLargerThan(Shape other) {
    return calculateArea() > other.calculateArea();
  }
}

class Rectangle extends Shape {
  double length;
  double breadth;

  Rectangle(this.length, this.breadth);

  @override
  double calculateArea() {
    return length * breadth;
  }

  @override
  double calculatePerimiter() {
    return 2 * (length + breadth);
  }
}

void main() {
  Circle c = Circle(7);

  Rectangle r = Rectangle(10, 20);

  c.printShape();
  r.printShape();
  print("I circle larger than rectangle : ${c.isLargerThan(r)}");
}
