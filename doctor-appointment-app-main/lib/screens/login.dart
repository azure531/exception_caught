import 'package:flutter/material.dart';
import 'package:medicare/screens/home.dart';
//import 'package:medicare/tabs/ScheduleTab.dart';

class  Login extends StatefulWidget
{
  @override
  State< Login> createState() => _LoginState();
}

class _LoginState extends State<Login> 
{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      home:Scaffold
      (
        appBar:AppBar(title:
        const Center(child:Text("LOGIN PAGE"),
        ),
        backgroundColor: Colors.white,
        ),
        body:
        Column(
          children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            // ignore: prefer_const_constructors
            child: Text(
              'welcome to',
              // ignore: unnecessary_const
              style:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize:19,
              )),
          ),
           Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            // ignore: prefer_const_constructors
            child: Text(
              'HEALTHIFY',
              // ignore: unnecessary_const
              style:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize:29,
              )),
          ),
          Container(
            padding:EdgeInsets.all(10.0),
            child: TextField(
              controller: nameController,
              decoration:const InputDecoration(
                border:OutlineInputBorder(),
                labelText:'Username',),
            ),
          ),
           Container(
            padding:EdgeInsets.all(10.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration:const InputDecoration(
                border:OutlineInputBorder(),
                labelText:'Password',),
            ),
          ),
          Container(
            height: 50,
            padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child:ElevatedButton(
              child: const Text("login"),
              onPressed: () {
                //print(nameController.text);
                //print(passwordController.text);
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) =>Home()),
                );
              },
              ),
          ),
            // ignore: sort_child_properties_last
            Row(children: [
              const Text('Does not have an account?'),
              TextButton(
                child:const Text(
                  'Sign in',
                  style:TextStyle(fontSize:16),
                ),
               onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder:(context) =>Home()),
                );
               }
              )
            ],
            mainAxisAlignment:MainAxisAlignment.center)
        ],
        ),
        ),
    );
  }
}