
import 'package:demp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


 class _MyCustomFontFont extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container"),
      ),
      body:
      Text("Supriya")
      ,
    );
  }

}