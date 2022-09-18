import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('HELLO FLUTTER...'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text('HELLO FRIENDS',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Aboreto'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ },
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    ) ,
  ));
}

