import 'package:flutter/material.dart';

class ChooseLoc extends StatefulWidget {
  const ChooseLoc({Key? key}) : super(key: key);

  @override
  _ChooseLocState createState() => _ChooseLocState();
}

class _ChooseLocState extends State<ChooseLoc> {

  int counter = 0;

  //Set this function to be async
  void getData() async {

    //Simulate a network request for some data on a distant server (using an API for example)
    //This delay function (just like sleep) will simulate the delay our data takes to get to us

    //The await keyword will tell this function to wait to finish before continuing!

    //Also, we do not only print our data, we will need it in our code, so we return and we assign it to the var username
    //rather than just printing
    String username = await Future.delayed(Duration(seconds: 3),(){
      return 'Username';
    });

    //Another sim, getting the bio from our user
    String bio = await Future.delayed(Duration(seconds: 2),(){
      return "Bio data recieved.";
    });

    //This print statement gets called first (before 'Data recieved')
    print("$username - $bio");

  }

  @override
  void initState() {
    super.initState();
    print("InitState function ran");
    getData();
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
