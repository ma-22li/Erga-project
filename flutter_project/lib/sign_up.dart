import 'package:flutter/material.dart';
import 'package:group_plus/api.dart';
import 'package:group_plus/response.dart';

//Classes

  // Controllers

class SignUpPage extends StatefulWidget {
    const SignUpPage({Key? key, required this.title }) : super (key: key);
  final String title;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
   Widget build(BuildContext context) {
     
    return Scaffold(
     backgroundColor: Colors.blueGrey.shade100,
      body: Container(
         padding: EdgeInsets.all(50.0),
            child: Column(
                children: <Widget>[
                  /*
                  SizedBox(height: 200.0,child:Image.asset("",fit: BoxFit.contain,) ),
                  */           
                                                      TextField(
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    controller: null,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email,color: Colors.black26,size: 20,),
                      hintText: "الإسم",
                      labelText: " الإسم ",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10))
                    
                    ),
                  ),
                  SizedBox(height: 30.0,),

                  TextField(
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    controller: null,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email,color: Colors.black26,size: 20,),
                      hintText: "البريد الالكتروني",
                      labelText: "البريد الالكتروني ",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10))
                    
                    ),
                    /*
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    */
                  ),

                  SizedBox(height: 30.0,),


                  TextField(
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    controller: null,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    maxLength: 10,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.https,color: Colors.black26,size: 20,),
                      hintText: "كلمة المرور",
                      labelText: "كلمة المرور",
                      border: OutlineInputBorder()
                    ),
                    /*
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    */

                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    controller: null,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    maxLength: 10,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.https,color: Colors.black26,size: 20,),
                      hintText: "إعادة كلمة المرور" ,
                      labelText: "إعادة كلمة المرور",
                      border: OutlineInputBorder()
                    ),
                    /*
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    */

                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    controller: null,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    autofocus: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.add_location,color: Colors.black26,size: 20,),
                      hintText: "المدينة" ,
                      labelText: "المدينة",                      border: OutlineInputBorder()
                    ),
                    /*
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                    */
                     ),

                    SizedBox(height: 30.0,),

                  SizedBox(height: 200.0,
                  
                  child:
                  SizedBox(height: 100.0,width: 100,
                  child:
                  Text("تسجيل الدخول",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 30,
                  color: Colors.black12,
                   fontWeight:FontWeight.bold,
                   backgroundColor:Colors.deepOrange)) ,) )
                  
      
                  
                ]
              
            )
            
            
  
      ),
      
    );
  }
}

//Sign up button
//On press > Get values from TextFields using controllers.
//1- Call Sign Up Api.
//2- Use response object.








// "Have an account?" > Sign in button redirect to Sign in page






