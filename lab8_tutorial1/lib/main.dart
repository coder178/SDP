import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: FinalTest1(),
));
class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
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
                        '19',
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
    );
  }
}

/*

expanded...

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Lab 8'),
          centerTitle: true,
        ),
        body: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child:  Container(
              child: Text("Box 1"),
              color: Colors.indigoAccent,
              padding: EdgeInsets.all(30.0),
            ),),

            Expanded(child: Container(
              child: Text('Box 2'),
              color: Colors.tealAccent,
              padding: EdgeInsets.all(60.0),
            ),),
            Expanded(child: Container(
              color: Colors.amberAccent,
              child: Text('Box 3'),
              padding: EdgeInsets.all(80.0),
            ),),
            Expanded(child: Container(
              color: Colors.redAccent,
              child: Text('Box 4'),
              padding: EdgeInsets.all(100.0),
            ),),
            Expanded(child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(80.0),
              child: Text('Box 5',
                style: TextStyle(
                    color: Colors.white
                ),),
            ))
          ],
        )
    ),
  ));
}

 */
/*
alignments...

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Lab 8'),
          centerTitle: true,
        ),
        body: Container(
          width: 400,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.greenAccent,
                child: Text("Container: 1"),
                padding: EdgeInsets.all(50.0),
              ),
              Container(
                color: Colors.deepPurpleAccent,
                child: Text("Container: 2"),
                padding: EdgeInsets.all(50.0),
              ),
              Container(
                color: Colors.indigoAccent,
                child: Text("Container: 3"),
                padding: EdgeInsets.all(50.0),
              )

            ],
          ),
        )
    ),
  ));
}
 */

/*
column...

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Lab 8'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              child: Text("Row: 1 Column: 1"),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              child: Text("Row: 2 Column: 1"),
              padding: EdgeInsets.all(10.0),
            )
          ],
        )
    ),
  ));
}
*/
/*
Row....

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lab 8'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Container(
            child: Text("Row: 1 Column: 1"),
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            child: Text("Row: 1 Column: 2"),
            padding: EdgeInsets.all(10.0),
          )
        ],
      )
    ),
  ));
}
*/


/*
padding...

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Lab 8'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Text('Padding only'),
      ),
    ),
  ));
}
 */
