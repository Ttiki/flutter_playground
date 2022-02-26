import 'package:flutter/material.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  _ChooseLocState createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {

  int counter = 0;

  @override
  void initState() {
    super.initState();

    print("InitState function ran");
  }

  @override
  Widget build(BuildContext context) {
    print("Build function ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        elevation: 0, //Make the appBar flat (no shadow at the bottom)
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Text("Counter is = $counter"),
      ),
    );
  }
}
