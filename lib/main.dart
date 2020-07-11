import 'package:flutter/material.dart';
import 'package:starwars_people/chooseperson.dart';
import 'package:starwars_people/loading.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context)=>Loading(),
      '/home':(context)=>Home(),
      '/chooseperson':(context)=>ChoosePerson(),



    },


  ));
}
