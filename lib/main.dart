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
        return Card(
          shadowColor: Colors.green ,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 50,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/images/user.jpg'),
                      ),
                      //Text("supr", style: TextStyle(color: Colors.black,))
                    ],
                  ),
                ),
              ),
              title: Text(arrNames[index],style: TextStyle(fontFamily: 'FontRoboto', fontSize: 20)),
              subtitle: Text('Delhi',),
              trailing: Icon(Icons.add) ,
            ),
          ),
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
