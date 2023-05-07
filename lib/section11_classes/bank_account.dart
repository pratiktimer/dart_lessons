class BankAccont {
  double _bankBalance;
  final String accountHolderName;

  BankAccont(this._bankBalance, this.accountHolderName);

  void deposit(double amount) {
    _bankBalance += amount;
    print('bank balance : $_bankBalance');
  }

  void withdraw(double amount) {
    if (amount > _bankBalance) {
      print(
          'The amount $amount should be less than bank balance $_bankBalance');
      return;
    }
    _bankBalance -= amount;
    print('bank balance : $_bankBalance');
  }
}
