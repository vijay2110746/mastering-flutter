void main(){
  User vij=User('vijay',20);
  vij.login();

  User vij1 = User('ajay',21);
  vij1.login();
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