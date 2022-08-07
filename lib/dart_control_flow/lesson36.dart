void main() {
  const netSalary = 37600;
  const expenses = 10000;
  if (netSalary < expenses) {
    print('You have saved \$${netSalary - expenses} this month');
  } else if (expenses > netSalary) {
    print('You have lost \$${expenses - netSalary} this month');
  } else {
    print('You balance hasn\'t change');
  }
}
