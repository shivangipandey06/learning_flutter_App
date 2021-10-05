
import 'package:flutter/material.dart';
import 'package:learning_flutter/Register.dart';
import 'package:learning_flutter/User.dart';

class LoginPage extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
     return Scaffold(
         body: Padding(
             padding: EdgeInsets.all(20),
             child: ListView(
               children: <Widget>[
                 Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.all(10),
                     child: Text(
                       'Login Screen',
                       style: TextStyle(
                           color: Colors.blue,
                           fontWeight: FontWeight.w500,
                           fontSize: 30),
                     )),
                 Container(
                   padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                   child: TextField(
                     controller: nameController,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'User Name',
                     ),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                   child: TextField(
                     obscureText: true,
                     controller: passwordController,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Password',
                     ),
                   ),
                 ),
                 MaterialButton(
                   onPressed: (){
                     //forgot password screen
                   },
                   textColor: Colors.blue,
                   child: Text('Forgot Password'),
                 ),
                 Container(
                     height: 50,
                     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                     child: ElevatedButton(
                       child: Text('Login'),
                       onPressed: () {
                         print(nameController.text);
                         print(passwordController.text);
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>User()));
                       },
                     )),
                 Container(
                     child: Row(
                       children: <Widget>[
                         Text('Does not have account?'),
                         MaterialButton(
                           textColor: Colors.blue,
                           child: Text(
                             'Sign Up',
                             style: TextStyle(fontSize: 20),
                           ),
                           onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
                           },
                         )
                       ],
                       mainAxisAlignment: MainAxisAlignment.center,
                     ))
               ],
             )));
  }
}