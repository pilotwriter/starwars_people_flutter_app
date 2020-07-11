import 'package:flutter/material.dart';
import 'person.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}




class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    Map data =  ModalRoute.of(context).settings.arguments;
    Person person = data['chosen'];
    List<Person> plist = data['list'];
  print(person.name);

    return Scaffold(
appBar: AppBar(
  title: Text('Character Info'),
  centerTitle: true,
),
      backgroundColor: Colors.grey[900],
      body: Padding(

          padding: EdgeInsets.all(50),
          child: Center(
            child: Column(
             
              children: <Widget>[
                Text('Name',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,

                ),),
                SizedBox(height: 25),
                Text(person.name,
                style: TextStyle(
                  fontSize: 35,
                  color:Colors.white,
                ),),
                Text('height',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,

                ),),
                SizedBox(height: 25),
                Text(person.height,
                  style: TextStyle(
                    fontSize: 35,
                    color:Colors.white,
                  ),),
                Text('Weight',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,

                ),),
                SizedBox(height: 25,),
                Text(person.weight,
                  style: TextStyle(
                    fontSize: 35,
                    color:Colors.white,
                  ),),
                Text('Gender',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,

                ),),
                SizedBox(height: 25),
                Text(person.gender.toUpperCase(),
                  style: TextStyle(
                    fontSize: 35,
                    color:Colors.white,
                  ),),


              ],
            ),
          ),
        ),

    );
  }
}
