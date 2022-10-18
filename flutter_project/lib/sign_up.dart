import 'package:flutter/material.dart';
import 'package:group_plus/api.dart';
import 'package:group_plus/response.dart';

//Classes
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, required this.title }) : super (key: key);
  final String title;

  @override
  State<SignUpPage> createState()=> _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

  // Controllers







  // App interface
@override
Widget build(BuildContext context){
  return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
  SizedBox(height: 20),
  Text(
  'Sign Up Screen',
  style: TextStyle(fontSize: 35, color: Colors.blueGrey[400]),
  ),
  SizedBox(height: 20),

        //Sign up form








      ],),),),);
}}

//Sign up button
//On press > Get values from TextFields using controllers.
//1- Call Sign Up Api.
//2- Use response object.








// "Have an account?" > Sign in button redirect to Sign in page






