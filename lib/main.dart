
void main() {
  BankAccount myAccount1=BankAccount("301093");
  myAccount1.accountInfo();
  myAccount1.deposit(5000);
  myAccount1.withdraw(1000);
  myAccount1.withdraw(6000);
  myAccount1.accountInfo();

}

class BankAccount{
  String accountID;
  double balance;
  BankAccount(this.accountID,[this.balance=0]);

  void  withdraw(double amount){
    if(amount<=0){
      print("please enter valid amount ,must be positive");
    }else if(amount > balance){
      print("please enter valid amount ,Insufficient balance");
    }else {
      balance -= amount;
      print("withdrawal Successful");
      print("The new balance is : $balance");
    }
  }

  void  deposit(double amount){
    if(amount <= 0){
      print("please enter valid amount ,must be positive");
    }else {
      balance += amount;
      print("desposit Successful");
      print("The new balance is : $balance");
    }
  }

  void accountInfo(){
    print("Account ID: $accountID");
    print("The Current balance is : $balance");
}
}

