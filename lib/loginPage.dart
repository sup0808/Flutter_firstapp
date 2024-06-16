import 'package:demp/ProfileScreen.dart';
import 'package:demp/widgets/rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  var userNameCtl = TextEditingController();
  var passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 100,
                  child: TextField(
                    controller: userNameCtl,
                    decoration: InputDecoration(hintText: "Enter Username"),
                  ),
                ),
                Container(
                  width: 200,
                  height: 100,
                  child: RoundedBtn(
                    btnName: "Submit",
                    color: Colors.white24,
                    textStyle: TextStyle(fontSize: 24),
                    callback: () async {
                      var userName = userNameCtl.text.toString();
                      var password = passwordCtl.text.toString();
                      var sharedf = await  SharedPreferences.getInstance();
                      sharedf.setString("UserName", userName);
                      sharedf.setString("Password", password);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen(userName)));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}