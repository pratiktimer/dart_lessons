void main() {
  const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  const cities = ['mumbaitest', 'punetest', 'corlim'];
  print(WhereFirst(
    numbers,
    (e) => e == 11,
    orElse: () => -1,
  ));

  print(WhereFirst(
    cities,
    (e) => e == 't',
    orElse: () => 'nocity',
  ));
}

T WhereFirst<T>(List<T> numbers, bool Function(T e) f,
    {required T Function() orElse}) {
  for (var number in numbers) {
    if (f(number)) {
      return number;
    }
  }

  return orElse();
}
