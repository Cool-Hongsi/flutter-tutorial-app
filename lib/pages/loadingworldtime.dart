import 'package:flutter/material.dart';
import 'package:firstmyapp/services/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWorldTime extends StatefulWidget {
  @override
  _LoadingWorldTimeState createState() => _LoadingWorldTimeState();
}

class _LoadingWorldTimeState extends State<LoadingWorldTime> {
  Future<void> setWorldTime() async {
    WorldTime instance = WorldTime(location: 'Toronto', flag: 'canada.png', url: 'America/Toronto');
    await instance.getTime();
    print(instance.time);
    // getTime() is async func, so this 'print' will be implemented immediately
    // As long as the getTime() is not implemented, instance.time value doesn't exist anything.
    // So, make setWorldTime() as async to set the process sequentially

    Navigator.pushReplacementNamed(context, '/worldtimemain', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    }); // no stack
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle( // from SpinKit package
          color: Colors.white,
          size: 70.0,
        ),
      ),
    );
  }
}