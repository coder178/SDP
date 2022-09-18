import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: HomeScreen(),
));
class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buttons'
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: TextButton.icon(
              onPressed: (){},
              icon: Icon(
                Icons.photo_camera,
                color: Colors.greenAccent,
                size: 50.0,
              ),

              label:Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Colors.redAccent,
                ),
                textAlign: TextAlign.start,
              )
          ),
        ),

      ),
    );
  }
}

//Setting Image

// child: Image(
// image: AssetImage('assets/sub_assets/nature.jpg'),
// ),

//FlatButton

// child:FlatButton(
//   onPressed: (){
//     print("print on console");
//   },
//   child: Text('click me'),
//   color: Colors.blue,
// ),

//Elevated Button

//   ElevatedButton(
//     child: Text('Button'),
//     onPressed: (){},
//     style: ElevatedButton.styleFrom(
//       primary: Colors.purple[800],
//       padding: EdgeInsets.symmetric(horizontal: 50, vertical:20),
//       textStyle: TextStyle(
//         fontSize: 40,
//         fontWeight: FontWeight.bold
//       ),
//   ),
// ),

//Icon button

// child: IconButton(
// icon: Icon(
// Icons.mail_outline_sharp,
// size: 30.0,
// ),
// tooltip: 'send mail me',
// onPressed: (){
// print('icon button');
// },
// ),

//Text button

// child: TextButton.icon(
// onPressed: (){ },
// icon: Icon(
// Icons.photo_camera,
// color: Colors.greenAccent,
// size: 50.0,
// ),
// label: Text(
// "Gallery",
// style: TextStyle(
// color: Colors.black,
// fontSize: 40.0,
// letterSpacing: 2.0,
// backgroundColor: Colors.redAccent,
// ),
// textAlign: TextAlign.start,
// )),
