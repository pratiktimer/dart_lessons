mixin Flyable {
  // Add your code here
  void fly() => print('Flying high!');
}

class Bird with Flyable {
  Bird(this.name);

  // Add your code here
  final String? name;
}

class Fish with Swimmable {
  Fish(this.name);

  // Add your code here
  final String? name;
}

void main() {
  // Add your code here
  var peacok = Bird('Peacok');
  peacok.fly();

  var fish = Fish('Dolphin');
  fish.swim();
}

mixin Swimmable {
  void swim() => print('Swimming in water');
}
