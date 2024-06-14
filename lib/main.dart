import 'package:demp/uiHelper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
              headlineLarge: TextStyle(fontFamily: 'FontRoboto', fontSize: 24),
              headlineMedium: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 16),
              headlineSmall: TextStyle(
                  fontWeight: FontWeight.w200, fontSize: 12)
          )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

/*
  @override
  State<MyHomePage> createState() => _MyHomePageState();
*/

  @override
  State<MyHomePage> createState() => _DateTimePage();

}

class _DateTimePage extends State<MyHomePage> {
 var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Text(
                "Current Date and time : ${DateFormat("yMMMMEEEEd").format(time)}",
                style: TextStyle(fontSize: 20),),
              ElevatedButton(onPressed: () {
                setState(() {

                });
              },
                  child: Text("Get Time"))
            ],
          ),
        ),
      )
      ,
    );
  }

}

class _MyCustomFontFont extends State<MyHomePage> {
  var userName = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:
      Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: userName,
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.orange
                        )

                    )
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: email,
                obscureText: true,
                obscuringCharacter: '*',

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.orange
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.green
                        )

                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red
                        )

                    ),
                    hintText: "Enter Password",
                    //suffixText: "Username exits",
                    suffixIcon: Icon(Icons.remove_red_eye, color: Colors.green,)
                  //  suffixIcon: IconButton(icon: Icons.e_mobiledata,onPressed: (){},)
                ),
              ),
              ElevatedButton(onPressed: () {
                String nameTxt = userName.text.toString();
                print("UserName :: $nameTxt");

                String emailTxt = email.text.toString();
                print("Email :: $emailTxt");
              }, child: Text("Submit"),)
            ],

          ),
        ),
      )
      ,
    );
  }

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "supriya",
      "Shresth",
      "Arvind",
      "One",
      "Two",
      "Neha",
      "Garima"
    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.green,
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
                title: Text(arrNames[index], style: Theme
                    .of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.blue)),
                subtitle: Text('Delhi', style: basicTextStyle(),),
                trailing: Icon(Icons.add),
              ),
            ),
          );
        },
        itemCount: arrNames.length,
        reverse: false,
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 10, thickness: 3,);
        },
      ),
    );
  }
}
