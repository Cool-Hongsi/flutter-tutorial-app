import 'package:flutter/material.dart';
import 'package:firstmyapp/navigation/drawernav.dart';

class InputPracMain extends StatefulWidget {
  @override
  _InputPracMainState createState() => _InputPracMainState();
}

class _InputPracMainState extends State<InputPracMain> {

  final myController = TextEditingController();

  void textValueFunc(text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Input Practice', style: TextStyle(fontFamily: 'Questrial'),),
          centerTitle: true,
        ),
        drawer: RootDrawer(),
        body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(80.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: myController,
                    ),
                    SizedBox(height: 20.0),
                    FlatButton(
                      onPressed: () {
                        textValueFunc(myController.text);
                      },
                      color: Colors.blue[900],
                      child: Text('Click', style: TextStyle(fontFamily: 'Questrial', color: Colors.white),),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}
