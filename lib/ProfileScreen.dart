import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profilescreen extends StatefulWidget {
  String? userName;

  Profilescreen(this.userName);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  String? name;
  String? password;

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Container(
            width: 300,
            child: Column(children: [Text("Welcome ${widget.userName}", style: TextStyle(fontSize: 24),),
              Text("UserName :: ${name}", style: TextStyle(fontSize: 24),),
            Text("Password :: ${password}",style: TextStyle(fontSize: 24),)])),
      ),
    );
  }

  Future<void> getValue() async {
    var shared = await SharedPreferences.getInstance();
    name = (await shared.get("UserName")) as String?;
    password = (await shared.get("Password")) as String?;
    print("UserName ::${name != null ? name : "UserName not saved"}");
    print("UserName ::${name != null ? name : "UserName not saved"}");
  }
}
