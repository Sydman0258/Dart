void main() {
  List<String> friends = [
    "Adam",
    "Sadam",
    "John",
    "Aaron",
    "Baron",
    "Duke",
    "Marquis",
  ];

  print(friends.where((x) => x.startsWith("A")));
}
