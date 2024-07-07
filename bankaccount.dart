//task 5
class OverdrawnException implements Exception {
  String errorMessage() => 'Error: Insufficient funds to complete transaction.';
}
class BankAccount {
  String accountNumber;
  double balance;

  BankAccount({
    required this.accountNumber,
    required this.balance,
  });

  void deposit(double amount) {
    balance += amount;
    print('Deposited \$${amount.toStringAsFixed(2)}');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
  void withdraw(double amount) {
    if (amount > balance) {
      throw OverdrawnException();
    } else {
      balance -= amount;
      print('Withdrawn \$${amount.toStringAsFixed(2)}');
      print('Current Balance: \$${balance.toStringAsFixed(2)}');
    }
  }
}
