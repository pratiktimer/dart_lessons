enum MathOperation {
  addition,
  subtraction,
  multiplication,
  division,
}

void main() {
  operation(5, 6, MathOperation.addition);
  operation(10, 5, MathOperation.subtraction);
  operation(4, 3, MathOperation.multiplication);
  operation(10, 2, MathOperation.division);
}

void operation(int number1, int number2, MathOperation operation) {
  var result;
  switch (operation) {
    case MathOperation.addition:
      result = number1 + number2;
      break;
    case MathOperation.subtraction:
      result = number1 - number2;
      break;
    case MathOperation.multiplication:
      result = number1 * number2;
      break;
    case MathOperation.division:
      result = number1 / number2;
      break;
    default:
      print('Invalid operation');
      return;
  }
  print('Result: $result');
}
