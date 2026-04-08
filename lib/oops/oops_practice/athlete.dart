// Create a class named Athlete with attributes name, sport, and number of medals won.
// Include a method that returns true if the number of medals is more than 5.
//Create two objects and display which athlete is elite.

class Athlete {
  String name;
  String sport;
  int medals;

  Athlete({required this.medals, required this.name, required this.sport});

  bool medalsMoreThanFive() {
    return medals > 5;
  }
}

void main(List<String> args) {
  Athlete a1 = Athlete(medals: 7, name: "John", sport: "Basketball");
  Athlete a2 = Athlete(medals: 4, name: "Jane", sport: "Hockey");

  print("Athlete A1 has more than 5 medals ? \n ${a1.medalsMoreThanFive()}");
  print("Athlete A2 has more than 5 medals ? \n${a2.medalsMoreThanFive()}");

  print(
    (a1.medals > a2.medals)
        ? "A1 is the elite Athlete"
        : "A2 is the elite athlete",
  );
}
