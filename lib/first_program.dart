void main() {
  print(add(10, 20, 30, 40));
  print(add(10, 20, 30, 40, 50));
  print(simpleInterest(10000, 10.5, 2.5));
  // print(areaOfCircle(5, (22 / 7)));
  // print(areaOfCircle(5));
  print(areaOfCircle(radius: 12, pi: 3.75));
  print(areaOfCircle(pi: 3, radius: 5));
  print(isAdult(20));
}

int add(int a, int b, int c, [int d = 0, int e = 0]) {
  return a + b + c + d + e;
}

double simpleInterest(double principal, double rate, double time) {
  print("The principal amount is : $principal");
  print("The rate is : $rate %");
  print("The time taken is : $time years");
  return (principal * time * rate) / 100;
}

double areaOfCircle({required double radius, double pi = 3.14}) {
  return pi * radius * radius;
}

bool isAdult(int age) {
  return (age > 18 ? true : false);
}

// double isPalindrome(int nums){

// if()


//}