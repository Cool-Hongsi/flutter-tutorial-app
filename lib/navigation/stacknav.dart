import 'package:flutter/material.dart';
import 'package:firstmyapp/pages/loadingworldtime.dart';
import 'package:firstmyapp/pages/worldtimemain.dart';
import 'package:firstmyapp/pages/worldtimelocation.dart';
import 'package:firstmyapp/pages/anotherstackpracmain1.dart';
import 'package:firstmyapp/pages/anotherstackpracmain2.dart';

class WorldTimeStackNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( primaryColor: Colors.blue[900] ),
      initialRoute: '/loadingworldtime',
      routes: {
        '/loadingworldtime': (context) => LoadingWorldTime(),
        '/worldtimemain': (context) => WorldTimeMain(),
        '/worldtimelocation': (context) => WorldTimeLocation()
      },
    );
  }
}

class AnotherStackNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( primaryColor: Colors.blue[900] ),
      initialRoute: '/anotherstackpracmain1',
      routes: {
        '/anotherstackpracmain1': (context) => AnotherStackPracMain1(),
        '/anotherstackpracmain2': (context) => AnotherStackPracMain2()
      },
    );
  }
}