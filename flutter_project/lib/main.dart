import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:group_plus/api.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of Erqa application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Erqa App',
      debugShowCheckedModeBanner: false,
      home: SignUpPage(title: 'Flutter Erqa App'),
    );
  }
}