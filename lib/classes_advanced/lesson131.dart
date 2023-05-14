class Animal {
  Animal({required this.age});
  final int age;

  void sleep() => print('Sleep');
  void eat() => print('Eat');
  void move() => print('Move');
  void showage() => print('Age');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void barl() => print('bark');
  @override
  void sleep() {
    print('Dog Sleep');
    //super.sleep();
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('moo');
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();

  final dog = Dog(age: 3);
  dog.sleep();
  final cow = Cow(age: 5);
  cow.sleep();
}
