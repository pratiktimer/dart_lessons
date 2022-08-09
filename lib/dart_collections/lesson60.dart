void main() {
  var a = {1, 3};
  var b = {3, 5};
  print(a.difference(b).union(b.difference(a)));
}
