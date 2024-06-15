

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login")
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.green,
        child: Row(
          children: [
            Text(
              "hfhhfsd"


            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back"))
          ],
        ),
      ),
    );
  }

}