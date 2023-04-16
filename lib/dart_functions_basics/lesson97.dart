void main() {
  test();
}

void test() {
  void test2() {
    print('inner');
  }

  test2();
}
