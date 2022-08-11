void main() {
  List<String> cities = ['London', 'Paris', 'Moscow'];
  print(cities.length);
  print(cities.reversed);
  print(cities.expand((element) => ['Panjim']));
  print(cities.first);
  print(cities.last);
  cities.addAll(['vasco']);
}
