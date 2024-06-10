

void main() {
  var testObj =   Test();
  testObj.printMessage();
  var result = testObj.add(3,7);
  print("add :: $result");
  print("Name :: ${testObj.getName()}");

}
class Test{

  void printMessage(){
    print("Print Message");
  }

  int add(int a, int b){
    return (a+b);
  }

  String getName(){
    return "Supriya";
  }
}

