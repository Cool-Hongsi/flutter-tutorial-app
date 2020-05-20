import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firstmyapp/pages/home.dart';

class FirstLoading extends StatefulWidget {
  @override
  _FirstLoadingState createState() => _FirstLoadingState();
}

class _FirstLoadingState extends State<FirstLoading> {

  Future<void> loadingApp() async {
    await Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement( // no stack
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    });
  }

  @override
  void initState() {
    super.initState();
    loadingApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: SpinKitCubeGrid( // from SpinKit package
          color: Colors.white,
          size: 70.0,

        ),
      ),
    );
  }
}
