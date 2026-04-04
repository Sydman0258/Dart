void main() {
  Map<String, int> name = {};
  name["Adam"] = 451;
  name["Eve"] = 6789;
  name["Ad"] = 67;
  name["Am"] = 6889;
  fourDigits(name);
}

void fourDigits(Map<String, int> name) {
  Map<String, int> input = {};

  name.forEach((key, value) {
    if (value.toString().length == 4) {
      input[key] = value;
    }
  });
  print(input);
}
