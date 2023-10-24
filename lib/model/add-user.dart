import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController  nameController = TextEditingController();
    TextEditingController  ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add-User-Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 250,
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: "Name"),
            ),),
            
             SizedBox(width: 250,
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(hintText: "Age"),
            ),),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              if (ageController.text.isNotEmpty && 
              ageController.text.isNotEmpty) {
                Navigator.pop(context,
{"name" : nameController.text, "age": ageController.text}

                );
                
              }

            }, child: Text("Add"),),
          ],
        ),
      ),
    );
  }
}