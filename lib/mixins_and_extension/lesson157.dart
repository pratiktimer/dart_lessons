void main() {
  final fruits = <String>['apple', 'banana', 'pear', 'orange'];
  print(fruits.sortByStringLength());
}

extension on List<String> {
  List<String> sortByStringLength() {
    var sortedList =
        List<String>.from(this); // create a copy of the original list
    sortedList.sort((a, b) => a.length.compareTo(b.length));
    return sortedList;
  }
}
