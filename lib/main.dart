import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
  "However beautiful the strategy, you should occasionally look at the results. - Winston Churchill",
  "If you change the way you look at things, the things you look at change.",
  "When she was once asked, ‘Do you pray?’ she responded, ‘I pray every second of my life; not on my knees but with my work. My prayer is to lift women to equality with men. Work and worship are one with me.’"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        //Inline function to "map" (read) through our list above (map). Foreach quote inside our quots list, we call
        //this inline function which return a simple Text widget, which we transform to a list with the method .toList()
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
