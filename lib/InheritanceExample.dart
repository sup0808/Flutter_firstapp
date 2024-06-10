void main() {
  User user = Student();
  user.getData();
}

class User {
  void getData() {
    print("User Deatils");
  }
}

class Student extends User {
  void getData() {
    print("Student Deatils");
  }
}
