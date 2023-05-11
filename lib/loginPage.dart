import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {

//const LoginPage({super.key});
   String username = "monika";
   String password = "123";
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();



  @override
  Widget build(BuildContext context) {
   // return const Placeholder();
   return Scaffold(
    appBar: AppBar(title: const Text('Login'),),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/images/decor.png",width: 150,height: 150,),
      ),
    
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: TextField(decoration: 
        
        InputDecoration(
         
          hintText: 'User-name',
          labelText: 'Enter Username',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
          
          ),
          controller: userName,
          ),
      ),
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Enter Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          
          ),
          controller: passWord,
          ),
      ),
      ElevatedButton(onPressed: (){
        if (userName.text != "" && passWord != ""){
          if (username == userName.text.trim()  && password == passWord.text.trim()){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

          }else{
            // show error
            print("show error");
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username or password wrong!!!")));
          }

        }else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username or password wrong!!!")));
          print("empty handle");
        }
      }, child: Text("Login")),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){}, child: Text("Not a User? Register")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){}, child: Text("Skip")),
      ),
      ],),
    )
    );
  }
}