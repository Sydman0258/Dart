import 'dart:io';

class Password {
  String _password = "";

  // Setter
  set password(String setPassword) {
    if (setPassword.length >= 6) {
      _password = setPassword;
    } else {
      print("The password must be more than 5 characters");
    }
  }

  // Getter (hidden password)
  String get password {
    return "******";
  }

  // Correct validation using real value
  String validatePassword(String input) {
    if (input == _password) {
      return "Password is correct";
    } else {
      return "Password is incorrect";
    }
  }
}

void main() {
  Password pass = Password();

  print("Set your password:");
  String setPass = stdin.readLineSync()!;
  pass.password = setPass; // using setter

  print("Enter password to validate:");
  String input = stdin.readLineSync()!;

  print(pass.validatePassword(input)); // print result
}
