class BankAccount {
  int _id = 1;
  double _balance =0;

  BankAccount(this._id,this._balance);
  BankAccount.revBalance() {
    _balance = 0;
  }
  int get accountId => _id;
  double get accountBalance => _balance;

   set withdraw(double amount)  {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("success withdraw amount $amount");
    } else {
      print("invalid withdraw");
    }
  }

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("success add $amount to your balance");
    } else {
      print("invalid deposit amount");
    }
  }
}
void main(){
  BankAccount account1= BankAccount(1, 2000);
  print("the account ID :${account1.accountId}");
  print(" your balance :${account1.accountBalance}");
  account1.withdraw=1000;
  print(" your balance :${account1.accountBalance}");
  account1.deposit=200;
  print(" your balance :${account1.accountBalance}");
}
//=========== testing example ===========
//the account ID :1
//  your balance :2000.0
// success withdraw amount 1000.0
//  your balance :1000.0
// success add 200.0 to your balance
//  your balance :1200.0
