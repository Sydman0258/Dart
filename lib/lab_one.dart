//Siddhartha Bhattarai

import 'dart:io';
import 'dart:math';

void main() {
  //  print(isSquare());
  //  print(grade());
  // print(isAllowed());
  //print(reverse(4578));
  // print(temperatureChange());
  // print(isevenOrOdd());
  //print(fibonacci());
  // print(regex());
  // print(isPalindrome());
  // print(isFactorialMatch());
  //  print(isMinMaxAvg());
  // print(isMinMaxAvg());
  //print(isLeapYear());
  // print(calculator());
  print(multiplication());
}

// 1. Check to see if given two input gives us a square or not
String isSquare() {
  print("Enter the length : ");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter the breadth : ");
  double breadth = double.parse(stdin.readLineSync()!);
  return (length == breadth ? "Yes! It is a square" : "No! It is not a square");
}

//2. Marks and Grades

String grade() {
  print("Enter the marks : ");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks < 25) {
    return "F";
  } else if (marks >= 25 && marks <= 45) {
    return "E";
  } else if (marks > 45 && marks <= 50) {
    return "D";
  } else if (marks > 50 && marks <= 60) {
    return "C";
  } else if (marks > 60 && marks <= 80) {
    return "B";
  } else {
    return "A";
  }
}

// 3. percentage of classes attended and whether the student is allowed to sit in the exam or not
String isAllowed() {
  print("Total number of classes attended :");
  int attended = int.parse(stdin.readLineSync()!);
  print("Total number of classes held :");
  int held = int.parse(stdin.readLineSync()!);

  double percentage = (attended / held) * 100;

  if (percentage >= 75) {
    return "The Student is allowed to take the exam";
  } else {
    return "The student is not allowed to take the exam";
  }
}

//4. Reverse a 4 digit number
int reverse(int digit) {
  String number = digit.toString();
  String reverse = number.split("").reversed.join();

  int result = int.parse(reverse);
  return result;
}

//5. Change farhenheit to celcius and vice versa

String temperatureChange() {
  int choice;
  do {
    print(
      "Select 1 for Celcius to Farhenheit and 2 for Farhenheit to celcius :",
    );
    choice = int.parse(stdin.readLineSync()!);
    if (choice != 1 && choice != 2) {
      print("Only 1 or 2 is accepted");
    }
  } while (choice != 1 && choice != 2);

  print("Choose the temperature :");
  double temperature = double.parse(stdin.readLineSync()!);
  double result;
  if (choice == 1) {
    result = (temperature * 9 / 5) + 32;
    return "$temperature degree Celcius is $result degree farhenhiet";
  } else if (choice == 2) {
    result = (temperature - 32) * 5 / 9;
    return "$result degree Celcius is $temperature degree farhenhiet";
  }
  return "Error";
}

//6. Check if +ve, -ve or 0  and if even or odd

String isevenOrOdd() {
  print("Give an input :");
  int input = int.parse(stdin.readLineSync()!);
  if (input > 0) {
    if (input % 2 == 0) {
      return "The number is even and positive";
    } else {
      return "The number is odd and positive ";
    }
  } else if (input < 0) {
    return ("The number is negative");
  } else {
    return ("The number is zero");
  }
}

//7 . Fibonacci Sequence

List<int> fibonacci() {
  int a = 0;
  int b = 1;
  int result;
  List<int> ans = [];
  print("Enter a number :");
  int userInput = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= userInput; i++) {
    ans.add(a);
    result = a + b;
    a = b;
    b = result;
  }
  return ans;
}

//8. Given an Input return the number of consonant vowels numbers and consonant
String regex() {
  int consonant = 0;
  int vowel = 0;
  int digits = 0;
  int special = 0;
  String vowelCharacter = "aeiouAEIOU";
  print("Enter a word :");
  String word = stdin.readLineSync()!;

  for (int i = 0; i <= word.length - 1; i++) {
    String check = word[i];
    if (vowelCharacter.contains(check)) {
      vowel++;
    } else if (RegExp(r'[A-Za-z]').hasMatch(check)) {
      consonant++;
    } else if (RegExp(r'[0-9]').hasMatch(check)) {
      digits++;
    } else {
      special++;
    }
  }

  return "Vowels : $vowel , Consonant: $consonant, Special: $special, Digit: $digits";
}

//9. Palindrome
String isPalindrome() {
  print("Please enter a number :");
  int userInput = int.parse(stdin.readLineSync()!);
  int a;
  int b;
  int c = userInput;
  String result = "";
  do {
    b = userInput % 10;
    result = result + b.toString();
    userInput = userInput ~/ 10;
  } while (userInput != 0);
  a = int.parse(result);
  return (a == c ? "Is a Palindrome" : "is not a palindrome");
}

//10. Factorial both for loop and factorial

String isFactorialMatch() {
  print("Enter a number :");
  int input = int.parse(stdin.readLineSync()!);
  int loopMethod = 1;
  int recursiveMethod;

  for (int i = 1; i <= input; i++) {
    loopMethod = loopMethod * i;
  }

  int factorial(int n) {
    if (n == 0) return 1;

    return factorial(n - 1) * n;
  }

  recursiveMethod = factorial(input);

  return (loopMethod == recursiveMethod
      ? "There is a match $recursiveMethod"
      : "There is no match $recursiveMethod $loopMethod");
}

//11. Given a list of numbers find the min max avg
String isMinMaxAvg() {
  List<int> integernumbers = [];
  int n = 10;

  do {
    print("Please write a number($n remaining) :");
    int input = int.parse(stdin.readLineSync()!);
    n--;
    integernumbers.add(input);
  } while (n > 0);

  int maximum = integernumbers.reduce(max);
  int minimum = integernumbers.reduce(min);

  int sum = integernumbers.fold(0, (prev, e) => prev + e);
  double avg = sum / integernumbers.length;

  return "The maximum number is $maximum , minimum is $minimum, Average is $avg";
}

//12. Checking if the given year is leap year
bool isLeapYear() {
  print("Write the year to check if it is loop year : ");
  int year = int.parse(stdin.readLineSync()!);
  return (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) ? true : false;
}

//Simple Calculator
String calculator() {
  print("Write the first number : ");
  int first = int.parse(stdin.readLineSync()!);

  print("Write the second number : ");
  int second = int.parse(stdin.readLineSync()!);
  print("Write the operation (+,*,-,/,%) : ");
  String operation = stdin.readLineSync()!;
  if (second == 0 && operation.contains("/")) {
    return "Error";
  }
  double result;
  switch (operation) {
    case "+":
      result = first + second.toDouble();
      break;

    case "-":
      result = first - second.toDouble();
    case "*":
      result = first * second.toDouble();
    case "/":
      result = first / second;
    case "%":
      result = first % second.toDouble();
    default:
      return "Please use a valid operator";
  }

  return "The result is $result";
}

//Multiplication table

String multiplication() {
  print("Enter a table for creating multiplication table :");
  int input = int.parse(stdin.readLineSync()!);
  String result = "";
  for (int i = 1; i <= 10; i++) {
    result += ("$input * $i = ${i * input}\n");
  }
  return result;
}

//Siddhartha Bhattarai
