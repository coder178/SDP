import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController unameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MaterialApp(
      title: 'Login Page',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.lightBlue[500],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'My App',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Center(
                    child:Text("Login with username and password"),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: unameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'USERNAME'
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD'
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('LOGIN NOW'),
                    onPressed: (){
                      print(unameController.text);
                      print(passwordController.text);
                    },
                  ),
                )


              ],
            ),

          )
      ),
    );
  }
}