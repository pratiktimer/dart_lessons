// Function Types
typedef Greet = String Function(String);

String sayNamaste(String name) => 'namste $name';

String sayBonjour(String name) => 'Bonjour $name';
void main() {
  welcome(sayNamaste, 'pratik');
  welcome(sayBonjour, 'pratik');
}

void welcome(Greet greet, String name) {
  print(greet(name));
}
