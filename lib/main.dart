import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("ID Card"),
          centerTitle: false,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Add 1 to your level!");
            //To change the state of anything, we must use the method setState (which takes itself a function
            //as an argument.
            //We need to use this method because we need to re-run the build method to rebuild everything.
            //This method does that!
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(35, 35, 25, 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/lord.png"),
                  radius: 70,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10), //Add space between the two Text widgets
              Text(
                "Lord Clément Combier",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "CURRENT NINJA LEVE",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10), //Add space between the two Text widgets
              Text(
                "$ninjaLevel",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text(
                      "clem64.combier@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.grey[500],
                      )
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}

