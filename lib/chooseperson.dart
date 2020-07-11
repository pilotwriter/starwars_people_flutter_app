import 'package:flutter/material.dart';
import 'person.dart';


class ChoosePerson extends StatefulWidget {
  @override
  _ChoosePersonState createState() => _ChoosePersonState();
}

class _ChoosePersonState extends State<ChoosePerson> {
  List<Person>list = [];
  Map datas  = {};

  @override
  Widget build(BuildContext context) {
    datas = ModalRoute.of(context).settings.arguments;
    list = datas['list'];
//    print(list.elementAt(2).name);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a Character'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[400],
      ),
      body: ListView.builder(
          itemBuilder: (context,index)

        {return Card(
          child: ListTile(
            onTap: () async{
              Navigator.pushNamed(context, '/home',arguments: {
                'chosen':list[index],


              });
              },
            title:Text(list[index].name),


          ),
      );


      },
        itemCount: list.length,

      ),
    );
  }
}
