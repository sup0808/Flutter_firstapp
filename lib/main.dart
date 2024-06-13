import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container"),
      ),
      body:

      TextButton(
        child: Text("Flat Button"),
        onPressed: (){
          print("Button clicked");
        },
        onLongPress: (){
          print("onLongPress clicked");
        },
      )

     /* ElevatedButton(
        child: Text("Flat Button"),
        onPressed: (){
          print("Button clicked");
        },
        onLongPress: (){
          print("onLongPress clicked");
        },
      )*/

     /* OutlinedButton(
        child: Text("Flat Button"),
        onPressed: (){
          print("Button clicked");
        },
        onLongPress: (){
          print("onLongPress clicked");
        },
      )*/
     ,

    );
  }
}