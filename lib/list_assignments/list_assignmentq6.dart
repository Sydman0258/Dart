void main() {
  Map country = {
    "name": "Adam",
    "Country": "Nepal",
    "address": "Kathmandu",
    "age": "50",
  };

  country.update("Country", (x) => ("China"));
  print(country);
}
