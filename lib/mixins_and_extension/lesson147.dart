class Person {
  String? _name;
  int? _age;
  String? _email;

  setname(String name) {
    _name = name;
  }

  setage(int age) {
    _age = age;
  }

  setemail(String email) {
    _email = email;
  }
}

void main() {
  final person = Person()
    ..setname('pratik')
    ..setage(29)
    ..setemail('pb@gmail.com');
}
