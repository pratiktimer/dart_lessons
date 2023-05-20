void main() {
  getCustomerOrder()
      .then((value) => print(value))
      .whenComplete(() => print('coffe done'))
      .catchError((ex) => print);

  fetchData()
      .then((value) => print(value))
      .whenComplete(() => print('numbers done'))
      .catchError((ex) => print);
}

Future<String> getCustomerOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'Cappuchino');
}

Future<List<String>> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => <String>['1', '2']);
}
