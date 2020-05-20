import 'package:flutter/material.dart';
import 'package:firstmyapp/navigation/drawernav.dart';

class WorldTimeMain extends StatefulWidget {
  @override
  _WorldTimeMainState createState() => _WorldTimeMainState();
}

class _WorldTimeMainState extends State<WorldTimeMain> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
//    Color appBarColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];
    Color fontColor = data['isDayTime'] ? Colors.grey[300] : Colors.white;

    return Scaffold(
//      backgroundColor: safeAreaBgColor,
      appBar: AppBar(
        title: Text('World Time', style: TextStyle(fontFamily: 'Questrial'),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      drawer: RootDrawer(),
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/$bgImage'),
                    fit: BoxFit.cover
                )
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, '/worldtimelocation'); // stack
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDayTime': result['isDayTime'],
                            'flag': result['flag']
                          };
                        });
                      },
                      icon: Icon(Icons.edit_location, color: fontColor),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                            color: fontColor,
                            fontFamily: 'Questrial'
                        ),
                      )
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                            fontSize: 28.0,
                            letterSpacing: 2.0,
                            color: fontColor,
                            fontFamily: 'Questrial'
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 66.0,
                        color: fontColor,
                        fontFamily: 'Questrial'
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

