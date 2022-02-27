import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //This map will store the var passed by the loading page view.
  Map data = {};

  @override
  Widget build(BuildContext context) {

    //We get the var from the other view.
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    //We do another ternary operator to set the background image
    String bgImg = data['isDayTime'] ? 'day.png' : 'night.png';
    Color? topBarColor = data['isDayTime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: topBarColor ,
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(
                      Icons.edit_location,
                  color: Colors.grey[300],),
                  label: Text(
                      "Edit location",
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                  ),
                  //child: child
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66,
                    color: Colors.white,
                  )
              )
            ],
          ),
        ),
      ))
    );
  }
}
