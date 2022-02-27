import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  // String time = "Loading...";

  void setupWorldTime() async{
    WorldTime instance = WorldTime('Berlin', 'germany.png', 'api/timezone/Europe/Paris');
    await instance.getTime();
    print(instance.time);
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      //We pass this var to the next view
      //We need to do that to use our newly made data to the other view.
      'location': instance.loc,
      'flag': instance.flag,
      'time': instance.time,
    }); //We do not want to just push, we want to replace (-> save memory by clearing the stack)
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text("Loading"),
      ),
    );
  }
}
