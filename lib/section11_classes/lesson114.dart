import 'bank_account.dart';

void main() {
  final bankAccont = BankAccont(100, 'pratik');
  bankAccont.deposit(200);
  bankAccont.withdraw(400);
}
