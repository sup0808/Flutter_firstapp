void main() {
 /* var map_name = {
    'Name': "Supriya",
    'yearOfExperience' : 2,
    'Avg.rating' : true,
    'location' : 3.4

  };*/
  var map_name = Map();
  map_name['Name'] = "Arvind";
  map_name['yearOfExperience'] = "Arvind";
  map_name['rating'] = "Arvind";
  map_name['location'] = "Arvind";

  print(map_name);
  print("Length-- ${map_name.length}");
  print("keys-- ${map_name.keys}");
  print("values-- ${map_name.values}");
  print("containsKey-- ${map_name.containsKey('Name')}");
  print("isEmpty-- ${map_name.isEmpty}");
  print("isNotEmpty-- ${map_name.isNotEmpty}");

}

/*
* output ::{Name: Arvind, yearOfExperience: Arvind, rating: Arvind, location: Arvind}
Length-- 4
keys-- (Name, yearOfExperience, rating, location)
values-- (Arvind, Arvind, Arvind, Arvind)
containsKey-- true
isEmpty-- false
isNotEmpty-- true

Process finished with exit code 0

