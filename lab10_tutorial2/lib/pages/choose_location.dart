import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  // const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    // print("Build function runs in choose location...");
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}
// class _ChooseLocationState extends State<ChooseLocation> {
//   int counter = 0;
//   void getData() async {
//     // Future.delayed(Duration(seconds: 4), () {
//     //   print('Hello students');
//     // });
//     // print('In getData after future call..');
//     String username =await Future.delayed(Duration(seconds: 4), (){
//       return 'UNIVERSITY : DDU';
//     });
//     String bio = await Future.delayed(Duration (seconds: 2), (){
//       return 'MY UNIVERSITY IS DDU';
//     });
//     print ('$username -> $bio');
//   }
//   @override
//   void initState(){
//     super.initState();
//     // print("Init function runs in choose location...");
//     print('before getData call');
//     getData();
//     print('After getData call');
//   }
//   @override
//   Widget build(BuildContext context) {
//     print("Build function runs in choose location...");
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         title: Text('CHOOSE LOCATION'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       // body: ElevatedButton(
//       //   onPressed: (){
//       //     setState(() {
//       //       counter += 1;
//       //     });
//       //   },
//       //   child: Text('COUNTER IS: $counter'),
//       // ),
//     );
//   }
// }