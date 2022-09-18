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
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController cpassController = TextEditingController();
    return MaterialApp(
      title: 'Signup Page',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Register",
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
                    child:Text("Register your self"),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name'
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email'
                    ),
                  ),
                ),



                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: unameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username'
                    ),
                  ),
                ),


                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password'

                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: cpassController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Conform Password'
                    ),
                  ),
                ),


                Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('REGISTER'),
                    onPressed: (){
                      print(unameController.text);
                      print(passwordController.text);
                      print(nameController.text);
                      print(emailController.text);
                      print(cpassController.text);
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