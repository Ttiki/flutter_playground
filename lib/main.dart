import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Test(),
));

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Our app is composed of three part (widgets)
      //The first is our AppBar, at the top of the screen. It has a child (title) = Text widget
      //Secondly, we have a body with a child of type Text widget.
      //Finnaly we have a floating button with a simple Text widget as well.
      appBar: AppBar(
        //We can't just add raw text. Flutter forces us to use a Widget Text to display text on screen.
        title: Text("Hello world!"),
        backgroundColor: Colors.amberAccent,
        //Attribut to display our title at the center of the AppBar.
        //This attrbut forces child widgets of AppBar to be centered relative to their parent widget (here AppBar.)
        //centerTitle: true, //commented because I don't want my text to be centered
      ),
      body: Center(
        child: Text(
            "Hello world!",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.blueAccent,
              fontFamily: "Din1451",
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        backgroundColor: Colors.amberAccent,
        //Actions
        onPressed: (){},
      ),
    );
  }
}
