import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String loc = ""; //Location name for the UI
  String time = ""; //The time in the location
  String flag = ""; //url to put the asset flag icon
  String url = ""; //url to API's endpoint (example: /api/timezone/Europe/Paris)
  bool isDayTime = false; //True or false if day time or not

  WorldTime(this.url, this.loc, this.flag); //Our constructor

  Future<void> getTime() async {
    try {
      //Request
      Response response = await get(Uri.https('worldtimeapi.org', url));
      Map data = jsonDecode(response.body);
      print(data);

      //Get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      print(dateTime);
      print(offset);

      //Create a datetime obj
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      print(now);

      //We store the data from the API into the class
      //Ternary operator to test if day or not
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error : $e');
      time = 'Could not get time data';
    }
  }
}
