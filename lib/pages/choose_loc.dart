import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  _ChooseLocState createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {

  List<WorldTime> locations = [
    WorldTime('api/timezone/Europe/London', 'London', 'uk.png'),
    WorldTime('api/timezone/Europe/Berlin', 'Athens', 'greece.png'),
    WorldTime('api/timezone/Africa/Cairo', 'Cairo', 'egypt.png'),
    WorldTime('api/timezone/Africa/Nairobi', 'Nairobi', 'kenya.png'),
    WorldTime('api/timezone/America/Chicago', 'Chicago', 'usa.png'),
    WorldTime('api/timezone/America/New_York', 'New York', 'usa.png'),
    WorldTime('api/timezone/Asia/Seoul', 'Seoul', 'south_korea.png'),
    WorldTime('api/timezone/Asia/Jakarta', 'Jakarta', 'indonesia.png'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index]; //Gets the country of the tapped country from the list
    await instance.getTime(); //We get the time for the country
    //Navigate back to the home screen
    //And pass the new data to the home screen
    Navigator.pop(context, {
      'location': instance.loc,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        elevation: 0, //Make the appBar flat (no shadow at the bottom)
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: (){
                  print(locations[index].loc);
                  updateTime(index);
                },
                title: Text(locations[index].loc),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
