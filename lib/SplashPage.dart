import 'dart:async';
import 'dart:async';

import 'package:demp/loginPage.dart';
import 'package:demp/widgets/Dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2),(){
      reload();
    });


    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  void reload(){
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:   AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 100,
                color: Colors.lightGreen,
              ),
              secondChild: Image.asset('assets/images/logo.png'),
              crossFadeState: isFirst ?CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 3)) ),
    );
  }
}

/*
* /*Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueAccent,
              child: Image.asset('assets/images/logo.png'))*/*/
