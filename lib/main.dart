import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_loc.dart';

//import 'pages/home.dart'; //Old way
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_loc.dart';

void main() => runApp(MaterialApp(
    //home: Home(), //We do not need this anymore as we have set-up a route to use.
    initialRoute: '/', //It basicaly replace our home to chose for a specific page to load on startup
    //The different routes that compose our map
    //It takes a map with a string for the route and a function with the context as an arg which returns a widget we
    //want to load for this route.
    routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLoc()
    },
));

