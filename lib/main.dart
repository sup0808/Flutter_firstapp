import 'package:demp/SplashPage.dart';
import 'package:demp/loginPage.dart';
import 'package:demp/uiHelper/util.dart';
import 'package:demp/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ProfileScreen.dart';

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
            headlineMedium:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            headlineSmall: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
          )),
      home: ProfileScreen("sggd"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

/*
  @override
  State<MyHomePage> createState() => _MyHomePageState();
*/

  @override
  State<MyHomePage> createState() => _SplitingWidgetPage();
}

class _GridViewPage extends State<MyHomePage> {
  var arrColors = [
    Colors.indigo,
    Colors.orange,
    Colors.grey,
    Colors.black12,
    Colors.red,
    Colors.pink,
    Colors.purpleAccent,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          /*Container(
            width :400,
            child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                Container(color: arrColors[0]),
            Container(color: arrColors[1]),
            Container(color: arrColors[2]),
            Container(color: arrColors[3]),
            Container(color: arrColors[4]),
            Container(color: arrColors[5]),
            Container(color: arrColors[6]),
            Container(color: arrColors[7]),
                ],
                ),
          ),*/

          Container(
            height: 50,
            child: GridView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: arrColors[index],
                );
              },
              itemCount: arrColors.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 11, crossAxisSpacing: 11),
            ),
          )

          /* Container(
            height: 400,
            child: GridView.extent(maxCrossAxisExtent: 200,
              children: [
                Container(color: arrColors[0]),
                Container(color: arrColors[1]),
                Container(color: arrColors[2]),
                Container(color: arrColors[3]),
                Container(color: arrColors[4]),
                Container(color: arrColors[5]),
                Container(color: arrColors[6]),
                Container(color: arrColors[7]),
            ],),
          )*/
        ],
      ),
    );
  }
}

class _SplitingWidgetPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            /* CategoryList(),
            UserDetail(),
            RectangleSlider(),
            ImageDetail()*/
            AnimatedContainerPage()
          ],
        ),
      ),
    );
  }
}

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var _height = 200.0;
  var _width = 100.0;
  var curve = Curves.easeInCubic;

  var decor = BoxDecoration(borderRadius: BorderRadius.circular(5));

  bool flag = true;

  var opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        AnimatedContainer(
          width: _height,
          height: _width,
          curve: curve,
          color: Colors.greenAccent,
          // decoration: decor,
          duration: Duration(seconds: 2),
        ),
        AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 2),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
          ),
        ),
        AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 100,
              color: Colors.lightGreen,
            ),
            secondChild: Image.asset('assets/images/logo.png'),
            crossFadeState: flag ?CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 3)),

        ElevatedButton(
          onPressed: () {
            if (flag) {
              opacity = 0.0;
              _height = 200;
              _width = 100;
              flag = false;
              curve = Curves.linearToEaseOut;
              decor = BoxDecoration(borderRadius: BorderRadius.circular(5));
            } else {
              opacity = 1.0;
              _height = 100;
              _width = 200;
              curve = Curves.slowMiddle;
              flag = true;
              decor = BoxDecoration(borderRadius: BorderRadius.circular(10));
            }
            setState(() {});
          },
          child: Text(
            "Animate",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
        )
      ]),
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.indigo,
        child: ListView.builder(
          itemBuilder: (context, index) => SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Text("Sup"),
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );
  }
}

class UserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: Image.asset(
              'assets/images/logo.png',
              height: 30,
              width: 30,
            ),
            title: Text("Name"),
            subtitle: Text("Delhi"),
            trailing: Icon(
              Icons.contact_emergency,
              color: Colors.blue,
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class RectangleSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.greenAccent,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.pink, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class ImageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.pink,
          child: Image.asset(
            'assets/images/flutter.png',
            height: 100,
            width: 300,
          ),
        ),
      ),
    );
  }
}

class _ExpandedWidgetPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 200,
            color: Colors.grey,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 200,
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 100,
              height: 200,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContainerDecorationPage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: 200,
        color: Colors.grey,
        child: Center(
          child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  //  borderRadius: BorderRadius.all(Radius.circular(12))
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 6, color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 11, color: Colors.red, spreadRadius: 7),
                  ],
                  shape: BoxShape.rectangle)),
        ),
      ),
    );
  }
}

class _RangeSliderPage extends State<MyHomePage> {
  RangeValues rangeValues = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels =
        RangeLabels(rangeValues.start.toString(), rangeValues.end.toString());
    return Scaffold(
      appBar: AppBar(),
      body: RangeSlider(
        values: rangeValues,
        labels: rangeLabels,
        onChanged: (newValue) {
          rangeValues = newValue;
          print('${newValue.start}');
          setState(() {});
        },
      ),
    );
  }
}

class _WrapWidgetPage extends State<MyHomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        direction: Axis.horizontal,
        runSpacing: 10,
        alignment: WrapAlignment.spaceBetween,
        spacing: 10,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
          ),
          Positioned(
            left: 30,
            right: 30,
            top: 30,
            bottom: 30,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(text: "Hello"),
            TextSpan(
                text: "Supriya",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue))
          ]))
        ],
      ),
    );
  }
}

class _DateTimePickerPage extends State<MyHomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Text(
                "Select Date",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2026));

                    if (datePicked != null) {
                      print('Date selected :: ${datePicked}');
                    }
                  },
                  child: Text("Get Date")),
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    var timeSelected = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.input);

                    if (timeSelected != null) {
                      print('Time selected :: ${timeSelected.hour}');
                    }
                  },
                  child: Text("Select Time"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.play_circle_fill_outlined,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
              FaIcon(
                FontAwesomeIcons.facebook,
                size: 50,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StackPage extends State<MyHomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.orange,
            ),
            Positioned(
              left: 30,
              right: 30,
              top: 30,
              bottom: 30,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(text: "Hello"),
              TextSpan(
                  text: "Supriya",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue))
            ]))
          ],
        ),
      ),
    );
  }
}

class _DateTimePage extends State<MyHomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Text(
                "Current Date and time : ${DateFormat("yMMMMEEEEd").format(time)}",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Get Time"))
            ],
          ),
        ),
      ),
    );
  }
}

class _MyCustomFontFont extends State<MyHomePage> {
  var userName = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                        borderSide: BorderSide(color: Colors.orange))),
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
                        borderSide: BorderSide(color: Colors.orange)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: "Enter Password",
                    //suffixText: "Username exits",
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.green,
                    )
                    //  suffixIcon: IconButton(icon: Icons.e_mobiledata,onPressed: (){},)
                    ),
              ),
              ElevatedButton(
                onPressed: () {
                  String nameTxt = userName.text.toString();
                  print("UserName :: $nameTxt");

                  String emailTxt = email.text.toString();
                  print("Email :: $emailTxt");
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
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
                title: Text(arrNames[index],
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Colors.blue)),
                subtitle: Text(
                  'Delhi',
                  style: basicTextStyle(),
                ),
                trailing: Icon(Icons.add),
              ),
            ),
          );
        },
        itemCount: arrNames.length,
        reverse: false,
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 10,
            thickness: 3,
          );
        },
      ),
    );
  }
}
