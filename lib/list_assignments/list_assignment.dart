//Create a llist of names and print all names using list

void displayNames(List<String> names) {
  for (String n in names) {
    print(n);
  }
}

void displayFruits(Set<String> fruits) {
  for (String n in fruits) {
    print(n);
  }
}

void main() {
  List<String> names = ["Adam", "Steve", "John"];
  Set<String> fruits = {"Apple", "Banana", "Grapes"};

  displayNames(names);
  print('');
  displayFruits(fruits);
}
