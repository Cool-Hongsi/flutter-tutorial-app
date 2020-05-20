import 'package:flutter/material.dart';
import 'package:firstmyapp/navigation/drawernav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontFamily: 'Questrial'),),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      drawer: RootDrawer(),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
