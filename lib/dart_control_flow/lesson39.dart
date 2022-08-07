void main() {
  var result = '';
  for (int i = 1; i <= 15; i++) {
    result = '';
    if (i % 3 == 0) {
      result = 'fizz';
    }
    if (i % 5 == 0) {
      result += 'buzz';
    }
    if (result.isEmpty) {
      result = i.toString();
    }
    print(result);
  }
}
