void main() {
  final list = [1, 2, 3];
  final copy1 = list;
  copy1[0] = 0;
  print(copy1);
  print(list);

  final copy2 = [...list];
}
