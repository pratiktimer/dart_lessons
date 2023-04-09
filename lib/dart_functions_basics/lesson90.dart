void main() {
  print(sum([]));
  print(sum([1, 2]));
  print(sum([1, 2, 3, 4]));
}

double sum(List<double> list) {
  return list.sum();
}

extension SumList on List<double> {
  double sum() {
    double result = 0;
    for (double value in this) {
      result += value;
    }
    return result;
  }
}

void foo(int a, [int? b]) {}
