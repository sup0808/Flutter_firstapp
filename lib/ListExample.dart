


void main() {

  var list = [10,20,30,40];
  list.add(50);
  print("$list");

  var nameList =[];
  nameList.add("Supriya");
  nameList.add("Gupta");
  nameList.add("Arvin");
  nameList.addAll(list);

  print("NameList $nameList");

  print("Length-- ${list.length}");
  print("Reverses-- ${list.reversed}");
  print("First-- ${list.first}");
  print("Last-- ${list.last}");
  print("isEmpty-- ${list.isEmpty}");

  print("isNotEmpty-- ${list.isNotEmpty}");
  //print("isNotEmpty-- ${list.insert(3,67).isNotEmpty}");

}


/*[10, 20, 30, 40, 50]
NameList [Supriya, Gupta, Arvin, 10, 20, 30, 40, 50]
Length-- 5
Reverses-- (50, 40, 30, 20, 10)
First-- 10
Last-- 50
isEmpty-- false
isNotEmpty-- true*/

/*
[10, 20, 30, 40, 50]
NameList [Supriya, 10, 20, 30, 40, 50, Gupta, Arvin]
* */