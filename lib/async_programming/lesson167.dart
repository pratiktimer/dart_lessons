Future<void> main() async {
  await coundown(5);
  print('done');
}

Future<void> coundown(int number) async {
  for (int i = number; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}
