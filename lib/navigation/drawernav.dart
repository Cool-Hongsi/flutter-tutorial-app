import 'package:flutter/material.dart';
import 'package:firstmyapp/pages/home.dart';
import 'stacknav.dart';
import 'package:firstmyapp/pages/inputpracmain.dart';

class RootDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.fromLTRB(50.0, 12.0, 50.0, 0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/thumb.png'),
                      radius: 36.0,
                    ),
                    SizedBox(height: 6.0),
                    Divider(height: 15.0, color: Colors.white),
                    Text(
                      'Sungjun Hong',
                      style: TextStyle(
                        fontFamily: 'Questrial',
                        color: Colors.white,
                        letterSpacing: 1.4,
                        fontSize: 16.0
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            ListTile(
              title: Text('Home', style: TextStyle(fontFamily: 'Questrial', fontSize: 15.0),),
              leading: Icon(Icons.home, color: Colors.blue[900],),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              }
            ),
            ListTile(
              title: Text('World Time', style: TextStyle(fontFamily: 'Questrial', fontSize: 15.0)),
              leading: Icon(Icons.access_time, color: Colors.blue[900],),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorldTimeStackNav()));
              }
            ),
            ListTile(
              title: Text('Stack Practice', style: TextStyle(fontFamily: 'Questrial', fontSize: 15.0),),
              leading: Icon(Icons.book, color: Colors.blue[900],),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherStackNav()));
              }
            ),
            ListTile(
              title: Text('Input Practice', style: TextStyle(fontFamily: 'Questrial', fontSize: 15.0)),
              leading: Icon(Icons.edit, color: Colors.blue[900],),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPracMain()));
              }
            )
          ],
        ),
      ),
    );
  }
}