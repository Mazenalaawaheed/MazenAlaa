// Custom exception for overdrawing from bank account
class OverdrawnException implements Exception {
  String errorMessage() => 'Error: Insufficient funds to complete transaction.';
}

// BankAccount class
class BankAccount {
  // Properties
  String accountNumber;
  double balance;

  // Constructor
  BankAccount({
    required this.accountNumber,
    required this.balance,
  });

  // Method to deposit money
  void deposit(double amount) {
    balance += amount;
    print('Deposited \$${amount.toStringAsFixed(2)}');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }

  // Method to withdraw money with exception handling
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

void main() {
  // Creating a bank account instance
  var account = BankAccount(accountNumber: '1234567890', balance: 1000.0);

  // Testing deposit and withdraw methods
  try {
    account.deposit(500.0);
    account.withdraw(200.0);
    account.withdraw(1500.0); // This will throw OverdrawnException
  } catch (e) {
    print(e.errorMessage());
  }
}
