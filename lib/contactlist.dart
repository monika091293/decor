import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contactlist extends StatefulWidget {
  const Contactlist({super.key});

  @override
  State<Contactlist> createState() => _ContactlistState();
}

class _ContactlistState extends State<Contactlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact")),
      body: ListView(
       children:  [
       Card(color: Colors.greenAccent,child: 
       ListTile(title: Text("Monika",style: 
                            TextStyle(color: Colors.white,backgroundColor: Colors.blue),
                                      ),
                      // leading: Icon(Icons.abc_rounded),
                      leading: CircleAvatar(backgroundImage: AssetImage("/images/decor.png"),),
                      trailing: Icon(Icons.add_call),
                      ),
                      ),
                     Container(decoration:BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)) ,
                   
                       
                      ),
       Text("data"),
       Text("data")],
        
      )
      );
  }
}