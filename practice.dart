void main(){
  // User vij=User('vijay',20);
  // vij.login();

  // User vij1 = User('ajay',21);
  // vij1.login();

  PremiumUser vij3 = PremiumUser('vijay', 21, true);
  vij3.login();
  vij3.detect();
}

class User{
  String username;
  int age;

  User(this.username,this.age);


  void login(){
    if (this.username=='vijay' && this.age==20){
        print('logged in successfully');
    }
    else{
      print('login unsuccessful');
    }
  }
}

class PremiumUser extends User{
  bool isHolder;

  PremiumUser(String username,int age,this.isHolder) :super(username,age);

  void detect(){
    if (this.username=='vijay' && this.age==20 && this.isHolder==true){
      print('man you are a premium member!!!');
    }
    else{
      print('we expected a lot you poor boii');
    }
  }
}