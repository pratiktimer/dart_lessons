enum Operation { plus, minus, multiply, divide }

void main() {
  int number1 = 4;
  int number2 = 2;
  const op = Operation.plus;
  switch (op) {
    case Operation.plus:
      print("addition of $number1 +$number2 is ${number1 + number2} ");
      break;
    case Operation.minus:
      print("subtraction of $number1 + $number2 is ${number1 - number2} ");
      break;
    case Operation.multiply:
      print("multiplication of $number1 + $number2 is ${number1 * number2} ");
      break;
    case Operation.divide:
      print("division of $number1 + $number2 is ${number1 % number2} ");
      break;
  }
}
