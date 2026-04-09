class Vehicle {
  int _speed = 0;

  Vehicle({required int speed}) : _speed = speed {
    if (speed < 0) {
      throw Exception("Speed cannot be negative");
    }
  }

  int get speed => _speed;

  set speed(int setSpeed) {
    if (setSpeed >= 0) {
      _speed = setSpeed;
    } else {
      print("Error! the value must be positive.");
    }
  }
}

class Bike extends Vehicle {
  Bike({required super.speed});

  void displayType() {
    print("The speed of the bike is : $speed");
  }
}

class Car extends Vehicle {
  Car({required super.speed});

  void displayType() {
    print("The speed of the car is : $speed");
  }
}

void main(List<String> args) {
  Car c = Car(speed: 40);
  Bike b = Bike(speed: 20);

  c.displayType();
  b.displayType();
  b.speed = -20;
}
