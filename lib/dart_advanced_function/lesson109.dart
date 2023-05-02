void main() {
  const numbers = [1, 2, 3, 4, 6, 7, 8, 9, 10];
  const cities = ['mumbaitest', 'punetest', 'corlim'];
  print(WhereList<int>(numbers, (e) => e % 2 == 0));
  print(WhereList<String>(cities, (city) => city.contains('test')));
}

List<T> WhereList<T>(List<T> numbers, bool Function(T e) f) {
  var result = <T>[];
  for (var number in numbers) {
    if (f(number)) result.add(number);
  }
  return result;
}
