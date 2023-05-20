Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);
  Stream.value(1);
  Stream.error(Exception('something went wrong'));
  Stream.empty();
  Stream.fromFuture(Future.delayed(Duration(seconds: 3), () => 1));
  Stream.periodic(Duration(seconds: 1), (index) => index);

  print(await stream.first);
}
