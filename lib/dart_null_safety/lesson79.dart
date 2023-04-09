void main() {
  int number2 = 0;
  // assertion operateror
  // i know what i am doing but if i am wrong i will get runtime error
  int? number;

  if (number2 == 0) {
    number = 2;
  }
  if (number! % 2 == 0) {
    print('${number} is even number');
  }
}
