void main() {
  User user = User("Supriya");

}

class User {
  var name;
  User(String name){
    this.name = name;
    print("Name is  $name");
  }
}
