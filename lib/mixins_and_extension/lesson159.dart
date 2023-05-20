void main() {
  for (var i in 1.rangeTo(10)) {
    print(i);
  }
}

extension on int {
  List<int> rangeTo(int other) {
    if (other < this) return [];
    var numberList = <int>[];
    for (int i = this; i <= other; i++) {
      numberList.add(i);
    }
    return numberList;
  }
}
