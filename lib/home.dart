import 'package:flutter/material.dart';
import 'package:screen/model/add-user.dart';
import 'package:screen/model/data.dart';
import 'package:screen/model/model.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      floatingActionButton: FloatingActionButton(onPressed: () async {
       final res = await Navigator.push(context, MaterialPageRoute(builder: (context) => add(),),);
        if(res != null){
          final hh = imf (Name: res["name"].toString(), age: int.parse(res["age"]));
          setState(() {
            data.add(hh);
          });
        }
      },
      child: Icon(Icons.add),
      ),
      
      // appBar: AppBar(
      //   title: Text("User-Add"),
      // ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context , index){
          return ListTile(
            title: Text(data[index].Name),
            subtitle: Text(data[index].age.toString()),

          );
        }),
        
    );
    
  }
}