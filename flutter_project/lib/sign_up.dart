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

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  final ErqaSignUpApi _erqaApi = ErqaSignUpApi();

  late String full_name, email, password, confirmPassword, city ;




  @override

   Widget build(BuildContext context) {
     
    return Scaffold(
     backgroundColor: Colors.blueGrey.shade100,
      body: Container(
         padding: EdgeInsets.all(50.0),
            child: Column(
                children: <Widget>[

              SizedBox(height: 25),


// Full name,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    controller: _fullNameController,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
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
                  ),
                ),
              ),

              SizedBox(height: 25),


// Email,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    controller: _emailController,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
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
                    ),
                  ),
                ),
              ),



              SizedBox(height: 25),


// Password,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    maxLength: 10,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.https,color: Colors.black26,size: 20,),
                      hintText: "كلمة المرور",
                      labelText: "كلمة المرور",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10))                     
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),


// Confirm password,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    maxLength: 10,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.https,color: Colors.black26,size: 20,),
                      hintText: "إعادة كلمة المرور" ,
                      labelText: "إعادة كلمة المرور",
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10))                     
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),



// The city,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                    controller: _cityController,
                    obscureText: true,
                    autocorrect:false,
                    textInputAction: TextInputAction.unspecified,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    autofocus: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.add_location,color: Colors.black26,size: 20,),
                      hintText: "المدينة" ,
                      labelText: "المدينة", 
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),                      
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),







              //sign up button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextButton(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.deepOrange[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                      child: Center(
                      child: Text(
                        'تسجيل',
                        style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),),

                      onPressed: () async {
                        //get values from TextFields using controllers.
                        full_name = _fullNameController.text;
                        email = _emailController.text;
                        password = _passwordController.text;
                        confirmPassword = _confirmPasswordController.text;

                        print("fullName >>> $full_name");
                        print("Email >>> $email");
                        print("City >>> $city");
                        print("Password >>> $password");
                        print("Confirm Password >>> $confirmPassword");

                        //1- Call signIn Api.
                        //2- Use responce object.
                        ErqaResponse signInResponse = await _erqaApi.signUp(full_name,email,password);
                        print("Response >>> $signInResponse");

                      },),),










                  
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






