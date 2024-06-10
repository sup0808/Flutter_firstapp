
void main() {

  var list = [10,20,30,40];
  list.add(50);
  print("$list");

  var nameList =[];
  nameList.add("Supriya");
  nameList.add("Gupta");
  nameList.add("Arvin");
 // nameList.addAll(list);
  nameList.insertAll(1, list);

  print("NameList $nameList");
}

/*
[10, 20, 30, 40, 50]
NameList [Supriya, 10, 20, 30, 40, 50, Gupta, Arvin]
* */