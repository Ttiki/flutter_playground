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


    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TextButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text("Edit location"),
              //child: child
          ),
        ],
      ))
    );
  }
}
