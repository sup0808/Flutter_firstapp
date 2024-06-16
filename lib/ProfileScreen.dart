import 'package:demp/DetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  String? userName;



  ProfileScreen(this.userName);

  @override
  State<ProfileScreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  String? name;
  String? password;

  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0,end: 100.0).animate(animationController);
    
    animationController.addListener((){
      print(animation.value);
      setState(() {

      });
    });

    animationController.forward();
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
            width: animation.value,
            height: animation.value,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              /* Text("Welcome ${widget.userName}", style: TextStyle(fontSize: 24),),
              Text("UserName :: ${name}", style: TextStyle(fontSize: 24),),
            Text("Password :: ${password}",style: TextStyle(fontSize: 24),),*/
              InkWell(
                  child: Hero(
                      tag: 'background',
                      child: Image.asset(
                        'assets/images/back.jpg',
                        height: 100,
                        width: 200,
                      )),
              onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
              },
              )
            ])),
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
