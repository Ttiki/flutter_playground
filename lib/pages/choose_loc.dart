import 'package:flutter/material.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  _ChooseLocState createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {

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
    );
  }
}
