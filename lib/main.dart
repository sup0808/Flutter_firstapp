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
      debugShowCheckedModeBanner: false,
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
        ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Supriya Gupta",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Two",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("SSix",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40)),
          ),
          Text("Seven",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40))

        ],)
    );
  }
}
