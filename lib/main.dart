import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
  Quote("However beautiful the strategy, you should occasionally look at the results.", "Winston Churchill"),
  Quote("If you change the way you look at things, the things you look at change.", "Unknown"),
  Quote("When she was once asked, ‘Do you pray?’ she responded, ‘I pray every second of my life; not on my knees but with my work. My prayer is to lift women to equality with men. Work and worship are one with me.’",
  "Unknown")
  ];

  //We create a new function which will generate a card to display the data we need in a fancy way
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.txt, //As we use it directly (the attribut) we don't need to do the {$...}
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
             '- ${quote.author}', //I've chose to add a - before the author, so here I need to use the ${...} thingy.
             style: TextStyle(
               fontSize: 14,
               color: Colors.grey[800],
             )
            ),
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
