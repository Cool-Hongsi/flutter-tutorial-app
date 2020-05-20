import 'package:flutter/material.dart';
import 'package:firstmyapp/navigation/drawernav.dart';

class AnotherStackPracMain1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Practice', style: TextStyle(fontFamily: 'Questrial'),),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      drawer: RootDrawer(),
      body: Center(
        child: FlatButton.icon(
            color: Colors.blue[900],
            onPressed: () {
              Navigator.pushNamed(context, '/anotherstackpracmain2');
            },
            icon: Icon(
              Icons.edit_location,
              color: Colors.white,
            ),
            label: Text('Add Stack', style: TextStyle(fontFamily: 'Questrial', color: Colors.white),)
        ),
      ),
    );
  }
}
