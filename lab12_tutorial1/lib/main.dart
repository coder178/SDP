import 'package:lab12_tutorial1/pages/home.dart';
import 'package:lab12_tutorial1/pages/loading.dart';
import 'package:lab12_tutorial1/pages/choose_location.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // home: Home(),
  // initialRoute: '/home',
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));