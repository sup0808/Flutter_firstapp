import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? apiData;
  Map? mapResponse;

  @override
  void initState() {
    getUserDetailFromApi();
    super.initState();
  }

  Future getUserDetailFromApi() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if (response.statusCode == 200) {
      setState(() {
        //apiData = response.body;
        mapResponse = json.decode(response.body);
      });
      print("Api request success------------ ${mapResponse!['data']}");
    } else {
      print("Api request success");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          child: Image.asset('assets/images/back.jpg'),
        ),
        Container(
          child: Text(
            mapResponse!['data'].toString(),
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    );
  }
}
