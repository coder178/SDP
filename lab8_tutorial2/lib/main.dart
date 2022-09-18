import 'package:flutter/material.dart';
import 'quote.dart';

void main(){
  runApp(MaterialApp(
      home:EchoList()
  ));
}

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  //   'The truth is realy pure and never simple',
  //   'The purpose of our life is to be happy',
  //   'The time is always right to do what is right'
  // ];

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'dvp'),
    Quote(author: 'dvp', text: 'The purpose of our life is to be happy'),
    Quote(
        text: 'The time is always right to do what is right', author: 'dvp'),
  ];

  Widget qutoeTemplete(quote) {
    return (Card(
      margin: EdgeInsets.fromLTRB(20.0, 30, 20, 30),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent[300]
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepPurpleAccent[100]
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.green[500],
      ),
      body: Column(
        children: quotes.map((quote) => qutoeTemplete(quote)).toList(),
      ),
    );
  }
}



/*
final app using stateful widget

class FinalTest1 extends StatefulWidget {
  // const FinalTest1({Key? key}) : super(key: key);
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {
  num age = 19.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile.jpeg'),
                        maxRadius: 100,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child:Text(
                          'NAME: ',
                          style: TextStyle(
                            color: Colors.grey[800],
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Drashti PATEL',
                        style: TextStyle(
                          color: Colors.blue[900],
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'AGE',
                        style: TextStyle(
                          color: Colors.grey[800],
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$age',
                        style: TextStyle(
                          color: Colors.blue[900],
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 50),
                      Column(
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: Colors.deepPurple[800],
                          ),
                          SizedBox(width: 12.0),
                          Text(
                            '20ceuos056@ddu.ac.in',
                            style: TextStyle(
                              color: Colors.brown[800],
                              fontSize: 16.0,
                              letterSpacing: 1.5,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }
}
*/


