// Create a class named Rectangle with attributes length and breadth.
// Include methods to calculate the area and perimeter.
//Create two objects and print the area and perimeter of both.
//Then print which rectangle has the larger area.

class RectanglePractice {
  int _length;
  int _breadth;

  int get length => _length;
  int get breadth => _breadth;

  set length(int value) => _length = value;
  set breadth(int value) => _breadth = value;

  RectanglePractice({required int length, required int breadth})
    : _breadth = breadth,
      _length = length;

  double area() {
    return length * breadth.toDouble();
  }

  double perimiter() {
    return length * 2 + breadth * 2;
  }

  void display() {
    print("The area is : ${area()}");
    print("The perimiter is : ${perimiter()}");
  }
}

void main() {
  RectanglePractice rp = RectanglePractice(length: 60, breadth: 40);
  RectanglePractice rp1 = RectanglePractice(length: 30, breadth: 40);

  rp.display();
  rp1.display();

  print(
    (rp.area() > rp1.area())
        ? "The first rectangle has larger area"
        : "The second rectangle has larger area",
  );
}
