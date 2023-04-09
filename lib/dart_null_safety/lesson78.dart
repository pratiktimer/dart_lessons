void main() {
  // flow analysis and definite assignment
  int? a;
  int b = 2;
  if (b == 2) {
    a = 2;
  } else {
    a = 4;
  }
  print(a + b);
}
