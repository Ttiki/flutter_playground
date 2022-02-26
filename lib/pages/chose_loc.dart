import 'package:flutter/material.dart';

class ChoseLoc extends StatefulWidget {
  const ChoseLoc({Key? key}) : super(key: key);

  @override
  _ChoseLocState createState() => _ChoseLocState();
}

class _ChoseLocState extends State<ChoseLoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello chose location world!"),
    );
  }
}
