void main() {
  User user = Student();
  user.getData();
}

class User {
  String name ="Supriya";
  void getData() {
    print("User Deatils");
  }
}

class Student extends User {
  void getData() {
    print("Student Deatils");
    print(super.name); //Super keyword
  }
}
