import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget{

  String? userName;

  Profilescreen(this.userName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Text("Welcome ${userName}"),
    );
  }
}

