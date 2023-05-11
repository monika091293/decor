

import 'package:decor_app/contactlist.dart';
import 'package:decor_app/homepage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginSFL extends StatefulWidget {
  const LoginSFL({super.key});
 


  @override
  State<LoginSFL> createState() => _LoginSFLState();
}

class _LoginSFLState extends State<LoginSFL> {
 String enterdUsername = "monika";
  String enterdPassword = "monika";
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Statefull')),
      body: Form(
       key: formkey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
        [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
          validator: (username) { //validator return null or sstring if value check is wrong
            if (username!.isEmpty || !username.contains("m")){
             return "entered wrong username";

            }else{
              return null;
            }  
          },
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
          labelStyle: TextStyle(color: Colors.amber),
          labelText: 'enter username'
          )
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            validator: (password) {
               if (password!.isEmpty || password.length == 4){
             return "entered wrong password";

            }else{
              return null;
            }  
            },
            decoration: InputDecoration(border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),labelStyle: const TextStyle(color: Colors.amber),
          labelText: 'enter password',
          
        
          )
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
            final valid = formkey.currentState!.validate();
            if (valid){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Contactlist(),));
            }else{
              Fluttertoast.showToast(
                msg: "Wrong",
                //timeInSecForIosWeb: 5,
                toastLength: Toast.LENGTH_LONG,);
            }
          }, 
           child: const Text("Login",style: TextStyle(color: Colors.amber),),
         //  style: ElevatedButton.styleFrom(shape: OutlinedBorder),
           ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(onPressed: (){}, child: const Text('Not a User..Register here')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(onPressed: (){}, child: const Text('Skip')),
        ),
            ],) 
      ),
    );
  }
}