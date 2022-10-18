import 'package:flutter/material.dart';

// Home page where user directed in case of successful sign up or sign in

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white60,
        body: SafeArea(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page',
      style: TextStyle(fontSize: 50,color: Colors.blueGrey[400])
    ),
          Text('You have signed up',
              style: TextStyle(fontSize: 30,color: Colors.blueGrey[400])
          )
        ],),),
    ),);
  }
}