import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

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
            "1000",
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
