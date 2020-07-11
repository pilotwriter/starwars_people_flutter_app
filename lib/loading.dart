import 'package:flutter/material.dart';
import 'person.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<Person> peopleList =List<Person>();


  void getList()async{
    if(peopleList.length <5){

    for(int i=1;i<80;i++){
      Person person = Person(url:'$i');
      await person.addPeople();
      if(person.name != null) {
        peopleList.add(person);
      }
      else{}
    }}
    else{}
    Navigator.pushReplacementNamed(context, '/chooseperson',arguments: {
      'list':peopleList,
    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child:SpinKitWave (
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Colors.red : Colors.green,
              ),
            );
          },
        )

      ),


    );
  }
}
