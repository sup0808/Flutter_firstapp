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

    var arrNames = ["supriya","Shresth","Arvind","One","Two","Neha","Garima"];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("${index+1}", style:TextStyle(fontSize: 16) ,),
          title: Text(arrNames[index]),
          subtitle: Text('Delhi'),
          trailing: Icon(Icons.add) ,
        );
      },
        itemCount: arrNames.length,
        reverse: false,
        scrollDirection: Axis.vertical, separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 10,thickness: 3,);
        },
      ),
    );
  }
}
