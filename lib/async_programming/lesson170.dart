Future<void> main() async {
  var stream = fizzBuzz(16);
  await for (var item in stream) {
    print(item);
  }
}

Stream<String> fizzBuzz(int n) async* {
  for (int i = 1; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'fizz buzz';
    }
    if (i % 3 == 0) {
      yield 'fizz';
    }
    if (i % 5 == 0) {
      yield 'buzz';
    }
    yield '$i';
  }
}
