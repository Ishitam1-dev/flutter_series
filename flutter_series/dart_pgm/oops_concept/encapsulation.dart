class Bank {
  double _balance = 0; //private var
  double get balance => _balance; //get method for using private var

  void deposit(double amount) {
    _balance = _balance + amount;
    print('amount deposited to you`r account');
  }
}

void main() {
  Bank b = Bank();

  print(b.balance);
  b.deposit(1000);
  print(b.balance);
}
