import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Form(
   // width: double.infinity,height: double.infinity,
    child:
    Column(
      children: [Icon(Icons.accessibility_sharp,weight:60,),
                TextFormField()],
      ) 
      ,)
      );
  }
}