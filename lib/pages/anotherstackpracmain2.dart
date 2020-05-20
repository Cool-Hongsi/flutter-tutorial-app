import 'package:flutter/material.dart';

class AnotherStackPracMain2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Practice', style: TextStyle(fontFamily: 'Questrial'),),
        centerTitle: true,
      ),
      body: Center(
          child: Text('Stack Practice Screen', style: TextStyle(fontFamily: 'Questrial'),)
      ),
    );
  }
}
