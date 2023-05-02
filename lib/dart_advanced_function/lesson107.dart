void main() {
  const numbers = [1, 2, 3, 4];
  const doubleNumbers = [1.0, 2.0, 3.0, 4.0];
  final doubles = transform<int, int>(numbers, (x) => x * 2);
  final squares =
      transform<double, int>(doubleNumbers, (x) => x.round() * x.round());
  print(doubles);
  print(squares);
}

List<R> transform<T, R>(List<T> numbers, R Function(T) f) {
  var result = <R>[];
  for (var number in numbers) {
    result.add(f(number));
  }
  return result;
}
