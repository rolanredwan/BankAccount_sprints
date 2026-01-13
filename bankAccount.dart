void main() {
  // Task5:
  BankAccount acc1 = BankAccount("2001", 1000);
  acc1.deposit(200);
  acc1.withdraw(100);
  acc1.displayAccountInfo();

  BankAccount acc2 = BankAccount.withZeroBalance("2001");
  acc2.deposit(200);
  acc2.withdraw(100);
  acc2.displayAccountInfo();
}

class BankAccount {
  String? accountID;
  double? balance;

  BankAccount(String accountID, double balance) {
    this.accountID = accountID;
    this.balance = balance;
  }

  BankAccount.withZeroBalance(String accountID) {
    balance = 0;
    this.accountID = accountID;
  }

  void withdraw(double amount) {
    if (balance == 0) {
      print("Your balance = 0, can not withdraw...");
    }

    if (amount == 0) {
      print("Invalid amount...");
    } else if (amount <= balance!) {
      balance = balance! - amount;
      print("Withdrawal successful...\nYour balance = $balance");
    } else {
      print("Insufficient balance...");
    }
  }

  void deposit(double amount) {
    balance = balance! + amount;
    print("Deposit successful...\nYour balance = $balance");
  }

  void displayAccountInfo() {
    print("Your Account ID is $accountID\nYour Balance = $balance");
  }
}
