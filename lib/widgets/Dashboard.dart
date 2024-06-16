import 'package:demp/SplashPage.dart';
import 'package:demp/loginPage.dart';
import 'package:demp/uiHelper/util.dart';
import 'package:demp/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  play(){
    print("Play clicked");

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlueAccent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: RoundedBtn(
                btnName: "Login",
                icon: Icon(Icons.lock),
                textStyle: TextStyle(fontSize: 24),
                callback: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }));
                },
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              width: 200,
              child: RoundedBtn(
                btnName: "Play",
                icon: Icon(Icons.play_circle),
                color: Colors.orange,
                textStyle:TextStyle(fontSize: 24,color: Colors.black) ,
                callback: play,
              ),
            ),

          ],
        ),
      ),
    );
  }
}