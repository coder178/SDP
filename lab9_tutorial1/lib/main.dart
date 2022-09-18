import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
      home:MyApp()
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'dvp'),
    Quote(author: 'dvp', text: 'The purpose of our life is to be happy'),
    Quote(
        text: 'The time is always right to do what is right', author: 'dvp'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote,delete: (){
          setState((){
            quotes.remove(quote);

          });
        },)).toList(),
      ),
    );
  }
}



