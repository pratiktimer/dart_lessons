class Person {
  final String _name;
  double _age;
  double _height;

  Person(this._name, this._age, this._height);

  void printDescription() {
    print(
        "My name is ${_name}. I'm ${_age} Years old, I'm $_height meters tall.");
  }
}
