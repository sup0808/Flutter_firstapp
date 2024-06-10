import 'dart:io';

void main(){
  print("welcome to Dirt");
  stdout.write("Enter the name"); // for printing
  var name = stdin.readLineSync(); // for taking value from commond line
  print("Welcome $name");
}