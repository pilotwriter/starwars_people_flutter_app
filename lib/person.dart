import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Person {

  String name;
  String height;
  String weight;
  String birth_year;
  String gender;
  String url;
  Person({this.url});
 // Person({this.name,this.height,this.weight,this.birth_year,this.gender});


  Future<void> addPeople() async{

   try{
     Response response = await get('https://swapi.dev/api/people/$url');
     Map data = jsonDecode(response.body);


      name= data['name'];
     height=data['height'];
     weight=data['mass'];
     birth_year=data['birth_year'];
     gender=data['gender'];

    // personlist.add(person);


   }
    catch(e){
     print("could not do that");

    }


  }


}