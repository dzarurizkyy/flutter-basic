// Parent Class
class Mammals {
  void suckle() {
    print("Can breastfeed...");
  }
}

// Mixin Class
mixin Ability {
  var run = 30;
}

// Child Class
class People extends Mammals with Ability {
  String name;
  int age;

  // Constructor
  People({required this.name, required this.age});
}

// Void Function
void sum(double number1, double number2) {
  double result;
  result = number1 + number2;
  print(result);
}

// Main Function
void main() {
  // Built-in Object
  print("Hello World 🌎!");
  sum(1, 2.5);

  // Custom Object
  var people1 = People(name: "Dzaru Rizky", age: 21);
  print(people1.name);
  print(people1.age);
  people1.suckle();

  var people2 = People(age: 17, name: "Isagi Yoichi");
  print(people2.name);
  print(people2.age);
  print(people2.run);
}
